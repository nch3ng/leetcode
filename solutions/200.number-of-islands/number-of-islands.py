import collections
class Solution:
    def numIslands(self, grid):
        """
        :type grid: List[List[str]]
        :rtype: int
        """
        self.nr = nr = len(grid)
        if nr == 0:
            return 0
        self.nc = nc = len(grid[0])
        count = 0
        for r in range(nr):
            for c in range(nc):
                if grid[r][c] == '1':
                    self.dfs(grid, r, c)
                    count += 1
        return count

    def is_within(self, r, c):
        if r >= 0 and r <= self.nr-1 and c >= 0 and c <= self.nc-1:
            return True
        else:
            return False

    def dfs(self, grid, r, c):
        if grid[r][c] == 0:
            return None

        grid[r][c] = '0'
        directions = [(0,1), (1,0), (0,-1), (-1,0)]
        for x,y in directions:
            if self.is_within(r+x, c+y):
                if grid[r+x][c+y] == '1':
                    self.dfs(grid, r+x, c+y)
        return None
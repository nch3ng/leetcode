class Solution:
    def rotate(self, matrix):
        """
        :type matrix: List[List[int]]
        :rtype: void Do not return anything, modify matrix in-place instead.
        """
        size = len(matrix)
        if size == 0 or size == 1:
            return None
        
        self.reverse(matrix, size)

        self.sys_swap(matrix, size)

    def reverse(self, matrix, length):
        top, bottom = 0, length-1 

        while top <= bottom:
            for i in range(length):
                # print('swap {} and {}'.format(matrix[top][i], matrix[bottom][i]))
                temp = matrix[top][i]
                matrix[top][i] = matrix[bottom][i]
                matrix[bottom][i] = temp

            top += 1
            bottom -= 1

    def sys_swap(self, matrix, length):
        for i in range(0, length):
            for j in range(i,length):
                if i != j:
                    temp = matrix[j][i]
                    matrix[j][i] = matrix[i][j]
                    matrix[i][j] = temp

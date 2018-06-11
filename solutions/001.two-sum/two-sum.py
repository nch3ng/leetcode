class Solution:
    def twoSum(self, nums, target):
        """
        :type nums: List[int]
        :type target: int
        :rtype: List[int]
        """
        num_hash = {}
        for i,num in enumerate(nums):
            if (target-num) in num_hash:
                return [num_hash[target-num], i]
            num_hash[num] = i
        
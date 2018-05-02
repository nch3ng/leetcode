# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

def sorted_array_to_bst_wrap(nums, start, ends)
    
    return nil if start > ends
    
    mid = (start+ends)/2
    
    root = TreeNode.new(nums[mid])
    root.left = sorted_array_to_bst_wrap(nums, start, mid-1)
    root.right = sorted_array_to_bst_wrap(nums, mid+1, ends)
    
    return root
end

# @param {Integer[]} nums
# @return {TreeNode}
def sorted_array_to_bst(nums)
    return sorted_array_to_bst_wrap(nums, 0, nums.length-1)
end
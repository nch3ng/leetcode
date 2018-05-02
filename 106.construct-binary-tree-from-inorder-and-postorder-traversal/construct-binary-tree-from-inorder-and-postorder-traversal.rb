# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {Integer[]} inorder
# @param {Integer[]} postorder
# @return {TreeNode}
def build_tree(inorder, postorder)
    return nil if inorder.empty? || postorder.empty?
    
    mid = postorder[-1]
    length = inorder.length
    root = TreeNode.new(mid)
    return root if length===1
    
    idx = inorder.index(mid)

    r_len=0
    r_len = length-idx-1 # (idx+1) ~ length-1

    l_len=0
    l_len= idx #0 ~ (idx-1)

    root.left = build_tree(inorder[0,l_len], postorder[0,l_len])
    root.right = build_tree(inorder[idx+1, r_len], postorder[idx, r_len])
    
    root
end
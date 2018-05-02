# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {TreeNode} p
# @param {TreeNode} q
# @return {TreeNode}
def lowest_common_ancestor(root, p, q)
    return root if root.nil?
  
    return root if root==p || root==q
  
    left_lca = lowest_common_ancestor(root.left, p, q)
    right_lca = lowest_common_ancestor(root.right,p, q)
  
    return root unless left_lca.nil? || right_lca.nil?
  
    return left_lca unless left_lca.nil?
    return right_lca unless right_lca.nil?
end
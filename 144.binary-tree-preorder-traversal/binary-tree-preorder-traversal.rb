# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer[]}
def preorder_traversal(root)
    path = []
    
    return path if root.nil?
    
    s = []
    s.push(root)
    
    while !s.empty?
        r = s.pop()
        path.push r.val
        
        s.push r.right unless r.right.nil?
        s.push r.left unless r.left.nil?
    end
    path
end
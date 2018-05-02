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
def postorder_traversal(root)
    s1 = []
    s2 = []
    return s2 if root.nil?
    
    s1.push(root)
    
    until s1.empty?
        r = s1.pop()
        s2.push(r.val)
        
        s1.push(r.left) unless r.left.nil?
        s1.push(r.right) unless r.right.nil?
    end
    s2.reverse
end
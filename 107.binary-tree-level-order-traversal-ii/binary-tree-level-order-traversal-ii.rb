# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer[][]}
def level_order_bottom(root)
    result=[]
    return result if root.nil?
    q=[]
    q.push root
    
    until q.empty?
        size = q.length
        internal_s=[]
        1.upto(size) do |i|
            r = q.shift
            internal_s.push r.val
            q.push r.left unless r.left.nil?
            q.push r.right unless r.right.nil?
        end
        result.unshift internal_s
    end
    result
end
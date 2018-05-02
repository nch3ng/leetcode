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
def right_side_view(root)
  right_side=[]
  return right_side if root.nil?
  q = []
  q.push(root)
  until q.empty?
    size = q.length
    1.upto(size) do |i|
      top = q.shift
      
      right_side.push top.val if i==1 # first element is the right most element of that level
    
      q.push(top.right) unless top.right.nil?
      q.push(top.left) unless top.left.nil?
      
    end
  end
  right_side
end
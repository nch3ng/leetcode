# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Void} Do not return anything, modify root in-place instead.
def flatten(root)
    return root if root.nil?
    s=[]
    s.push root
    tmp=root
    until s.empty?
        r = s.pop
        #print "node: #{r.val}\n"
        
        s.push r.right unless r.right.nil?
        s.push r.left unless r.left.nil?
        
        if r!=root
            tmp.right=r
            tmp.left=nil
            tmp=tmp.right
        end
    end
end
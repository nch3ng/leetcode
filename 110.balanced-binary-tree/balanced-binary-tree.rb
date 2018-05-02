# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end


def maxHeight(root)
    #print "node: #{root.val}\n" if !root.nil?
    return 0 if root.nil?
    
    lh=maxHeight(root.left)
    rh=maxHeight(root.right)
    #print "left height: #{lh}, right height: #{rh}\n"
    return -1 if lh < 0 || rh < 0
    return -1 if (lh-rh).abs > 1
    
    
    
    return [lh,rh].max+1
end
# @param {TreeNode} root
# @return {Boolean}
def is_balanced(root)
    h = maxHeight(root)
    return false if h < 0
    return true if h >= 0
end
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# Encodes a tree to a single string.
#
# @param {TreeNode} root
# @return {string}
def serialize(root) 
    q=[]
    ans = []
    return root if root.nil?
    
    q.push(root)
    until q.empty?
        t = q.shift
        if t.nil?
            ans.push(nil)
        else
            ans.push(t.val)
            
            if t.left.nil?
                q.push(nil)
            else
                q.push(t.left) 
            end
            
            if t.right.nil?
                q.push(nil)
            else
                q.push(t.right) 
            end
        end
    
    end
    ans
end

# Decodes your encoded data to tree.
#
# @param {string} data
# @return {TreeNode}
def deserialize(data)
    return data if data.nil?
    q=[]
    
    root = TreeNode.new(data.shift)
    q.push(root)
  
    until data.empty?
        t = q.shift
        l = data.shift
        r = data.shift
  
    unless l.nil?
        t.left = TreeNode.new(l)
        q.push(t.left)
    end
    
    unless r.nil?
        t.right = TreeNode.new(r)
        q.push(t.right)
    end
    
  end
  root
end

# Your functions will be called as such:
# deserialize(serialize(data))
# Definition for a binary tree node.
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

# Deserialize string to root object
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
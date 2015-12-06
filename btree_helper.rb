=begin
[]
[1,2,3,4,5]
[1]
[1,2,3,4,5,6,7,8]
[1,2,3,null,null,4]
[3,5,1,6,2,0,8,null,null,7,4]
[37,-34,-48,null,100,-100,48,null,null,null,null,-54,null,-71,-22,null,null,null,8]
[3,9,20,null,null,15,7]
=end

$btree_testcase = [
  [1,2,3,4,5,6,7,8],
  [],
  [1,2,3,nil,nil,4],
  [3,5,1,6,2,0,8,nil,nil,7,4],
  [37,-34,-48,nil,100,-100,48,nil,nil,nil,nil,-54,nil,-71,-22,nil,nil,nil,8]
]


# Definition for a binary tree node.
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

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


# @param {TreeNode} root
# @return {TreeNode}

def getNode(root, val) 
  return root if root.nil?
  s=[]
  
  s.push(root)
  until s.empty?
    r = s.pop
    return r if r.val == val
    
    s.push r.left unless r.left.nil?
    s.push r.right unless r.right.nil?
    
  end
  
  return nil
end

# @param {TreeNode} root
def find_all_paths(root)
   
  return [] if root.nil?
  parent_path = Hash.new
  s=[]
  paths=[]
  
  s.push(root)
  
  until s.empty?

    r=s.pop()
    #puts r.val
    #puts ''
    p=''
    if parent_path[r].nil?
      p = r.val.to_s
    else
      #puts parent_path[r]
      #puts r.val
      p = "#{parent_path[r]}->#{r.val}"
    end
    
    #puts p
    
    if r.left.nil? && r.right.nil?
      #puts 'Its leafnode'
      paths.push(p)
    end
    
    if !r.right.nil?
      s.push(r.right)
      parent_path[r.right]=p.to_s
    end

    if !r.left.nil?
      s.push(r.left)
      parent_path[r.left]=p.to_s
    end
  end
  paths
end

# @param {TreeNode} root
# @param {TreeNode} node
def find_path(root, node)
  
  return s if root.nil?
  parent_path=Hash.new
  s = []
  s.push(root)
  
  until s.empty?
    r = s.pop()
    current_path=[]
    
    if parent_path[r].nil?
      current_path.push(r.val)
    else
      current_path=parent_path[r].clone
      current_path.push(r.val)
    #  print " node: #{r.val},parent: #{parent_path[r]}, current_path: #{current_path}\n"
    end
    
    #print "#{current_path}\n"
    
    return current_path if node.val==r.val
    
    if !r.right.nil?
      #print "Push #{r.right} #{r.right.val}, parent_path: #{current_path}\n"
      parent_path[r.right]=current_path
      s.push(r.right)
    end
    
    if !r.left.nil?
      #print "Push #{r.left} #{r.left.val}, parent_path: #{current_path}\n"
      parent_path[r.left]=current_path
      s.push(r.left)
    end
  end
  return [] 
end
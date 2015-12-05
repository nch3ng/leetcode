#require '../btree_helper.rb'

# @param {TreeNode} root
# @return {TreeNode}
def invert_tree(root)
  return root if root.nil?
  
  s=[]
  s.push(root)
  
  until s.empty?
    
    r = s.pop
    
    tmp = r.left
    r.left=r.right
    r.right=tmp
    
    s.push r.left unless r.left.nil?
    s.push r.right unless r.right.nil?
    
  end
  
  return root
end

#root = deserialize($btree_testcase[0])
#r_root = invert_tree(root)
#print "#{serialize(root)}"
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {String[]}
def binary_tree_paths(root)
  return [] if root.nil?
  parent_path = Hash.new
  s=[];
  paths=[];
  
  s.push(root)
  
  until s.empty?

    r=s.pop();
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
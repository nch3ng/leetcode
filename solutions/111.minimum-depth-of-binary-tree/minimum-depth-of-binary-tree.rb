# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer}
def min_depth(root)
    
    return 0 if root.nil?
    
    parent_level = Hash.new
    s=[]
    s.push root
    min_depth = 0
    flag=false
    until s.empty?
        r = s.pop
        parent_level[r]=0 if parent_level[r].nil?
        current_level=parent_level[r]+1
        
        if r.left.nil? && r.right.nil?
            flag=true
            min_depth = current_level if min_depth == 0
            min_depth = [current_level,min_depth].min if min_depth != 0
        end
        
        if !r.left.nil? && (!flag || current_level <= min_depth)
            s.push r.left
            parent_level[r.left]=current_level
        end
        
        if !r.right.nil? && (!flag || current_level <= min_depth)
            s.push r.right
            parent_level[r.right]=current_level
        end
    end
    
    min_depth
    
end
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

class BSTIterator
    @s
    # @param {TreeNode} root
    def initialize(root)
        @s=[]
        tmp=root
        until tmp.nil?
            @s.push(tmp)
            tmp=tmp.left
        end
    end

    # @return {Boolean}
    def has_next
        !@s.empty?
    end

    # @return {Integer}
    def next
        n = @s.pop
        result = n.val
        if !n.right.nil?   
            n=n.right
            
            until n.nil?
                @s.push n
                n=n.left
            end
        end
        result
    end
end

# Your BSTIterator will be called like this:
# i, v = BSTIterator.new(root), []
# while i.has_next()
#    v << i.next
# end
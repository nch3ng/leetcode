# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  c1=l1
  c2=l2
  tmp=nil
  c3=nil
  carry=0
  i=0

  return c1 if c2.nil?
  return c2 if c1.nil?

  while !c1.nil? || !c2.nil?

    if !c1.nil?
      carry+=c1.val
      c1=c1.next
    end

    if !c2.nil?
      carry+=c2.val
      c2=c2.next
    end

    if tmp.nil?
      tmp = ListNode.new(carry%10)
      tmp.next=nil
      c3=tmp
    else
      tmp.next = ListNode.new(carry%10)
      tmp=tmp.next
      tmp.next=nil

    end
    carry /= 10
  end

  if carry != 0
    tmp.next = ListNode.new(carry%10)
    tmp=tmp.next
    tmp.next=nil
  end

  return c3
end
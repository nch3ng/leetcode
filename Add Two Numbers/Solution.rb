# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end
class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end

class LinkedList
  def initialize(val)
    @head = ListNode.new(val)
  end

  def add(val)

    current = @head

    while current.next != nil
      current = current.next
    end
    @node = ListNode.new(val)
    current.next = @node
  end

  def travel
    current = @head
    while current.next != nil
      puts current.val
      current = current.next
    end
    puts current.val
  end
end

def travel(head)
  if head.nil?
    puts 'nil'
    return head
  end
  current = head
  if head != nil
   print "#{current.val} -> "
  end
  while current.next != nil
    current = current.next
    print "#{current.val} -> "
  end

  puts "nil"
end

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


n11 = ListNode.new(0)
n12 = ListNode.new(2)
n11.next=n12
n13 = ListNode.new(3)
n12.next=n13
n14 = ListNode.new(5)
n13.next=n14

travel(n11)


n21 = ListNode.new(3)
n22 = ListNode.new(0)
n21.next=n22
n23 = ListNode.new(8)
n22.next=n23
#n24 = ListNode.new(5)
#n23.next=n24

travel(n21)

n = add_two_numbers(nil,nil)
travel(n)


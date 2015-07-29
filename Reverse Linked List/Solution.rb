
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

  def addtohead(val)
      @node = ListNode.new(val)
      @node.next=@head
      @head = @node
  end

  def reverse

    current_n = @head
    prev_n = nil
    next_n = current_n.next
    if current_n.next == nil || current_n.next.next == nil
      if current_n.next != nil
        current_n.next.next = current_n
        @head = current_n.next
        current_n.next = nil
      end
    else
      i=1
      while current_n.next != nil
        #puts "#{i}:"
        i = i + 1
        #if prev_n != nil
        #  puts "prev - #{prev_n.val}"
        #end
        #if current_n != nil
        #  puts "current - #{current_n.val}"
        #end
        #if next_n != nil
        #  puts "next - #{next_n.val}"
        #end
        current_n.next = prev_n
        prev_n = current_n
        current_n = next_n
        next_n = next_n.next

        #puts "----"
        #puts "current - #{current_n.val}"
        #if current_n.next != nil
        #  puts "current.next - #{current_n.next.val}"
        #else
        #  puts "current.next = nil"
        #end
        #puts "----"
      end
      current_n.next=prev_n
      @head=current_n
    end
  end
end
# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
  # no node or only one node
  return head if head.nil? || head.next.nil?

  current_n = head
  prev_n = nil
  next_n = current_n.next

  # only two node
  if current_n.next.next.nil?
      current_n.next.next = current_n
      current_n = current_n.next
      current_n.next.next = nil
      return current_n
  end

  # more than two node
  while !current_n.next.nil?
    current_n.next = prev_n
    prev_n = current_n
    current_n = next_n
    next_n = next_n.next
  end

  current_n.next=prev_n
  return current_n

end

def travel(head)
  return head if head.nil?
  current = head
  if head != nil
    puts head.val
  end
  while current.next != nil
    current = current.next
    puts current.val
  end
end

#list = LinkedList.new('testhead')
#list.add('second head')
#list.add('third head')
#list.add('forth head')
#list.reverse
#list.travel
node1 = ListNode.new(1)
node2 = ListNode.new(2)
node1.next=node2
node3 = ListNode.new(3)
#node1 = nil
node2.next = node3
#node4 = ListNode.new(4)
#node3.next = node4
#
travel(node1)
newnode = reverse_list(node1)
travel(newnode)

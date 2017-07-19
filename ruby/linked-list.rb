class Node
  attr_accessor :value, :next_node

  def initialize value, next_node
    @value = value
    @next_node = next_node
  end
end

class LinkedList
  attr_accessor :head
  def initialize value
    @head = Node.new value, nil
  end

  def PushFront value
    new_node = Node.new value, @head
    @head = new_node
  end

  def PopFront
    @head = @head.next_node
  end

  def PushBack value
    new_node = Node.new value, nil

    current = @head
    while current.next_node != nil
      current = current.next_node
    end

    current.next_node = new_node
  end

  def PopBack
    last = @head
    while last.next_node != nil
      last = last.next_node
    end

    current = @head
    while current.next_node != last
      current = current.next_node
    end

    current.next_node = nil
  end

  def AddAfter node, value
    current = @head
    while current.value != node
      current = current.next_node
    end
    new_node = Node.new value, current.next_node
    current.next_node = new_node
  end

  def Contains value
    found = false
    current = @head
    while current && not(found)
      if current.value == value
        found = true
      else
      current = current.next_node
      end
    end

    return found
  end

  def DeleteValue value
    current = @head
    prev = nil
    while current != nil
      if current.value == value
        if prev
          prev.next_node = current.next_node
          break
        else
          @head = current.next_node
        end
      else
        prev = current
        current = current.next_node
      end
    end
  end

end


ll = LinkedList.new(5)
print "Linked-list created:\n"
p ll

ll.PushFront(4)
ll.PushFront(3)
ll.PushFront(2)
ll.PushFront(1)
print "Put front with value 1:\n"
p ll


ll.PopFront
print "Pop front:\n"
p ll

ll.PushBack(6)
print "Push back with value 6:\n"
p ll

ll.PopBack
print "Pop back:\n"
p ll

ll.AddAfter(4,10)
print "Add 10 after 4:\n"
p ll

print "Linked-list contains 12?\n"
p ll.Contains(12)

print "Linked-list contains 2?\n"
p ll.Contains(2)


print "Delete 10:\n"
ll.DeleteValue(10)
p ll

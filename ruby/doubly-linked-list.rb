class Node
  attr_accessor :value, :next_node, :prev_node

  def initialize value, next_node, prev_node
    @value = value
    @next_node = next_node
    @prev_node = prev_node
  end
end

class DLinkedList
  attr_accessor :head, :tail, :size

  def initialize value
    @head = Node.new value, nil, nil
    @tail = @head
    @size = 1
  end

  def push_front value
    new_node = Node.new value, @head, nil
    @head.prev_node = new_node
    @head = new_node
    @size += 1
  end

  def pop_front
    new_node = @head.next_node
    new_node.prev_node = nil
    @head = new_node
    @size -= 1
  end

  def push_back value
    new_node = Node.new value, nil, @tail
    @tail.next_node = new_node
    @tail = new_node
    @size += 1
  end

  def pop_back
    new_node = @tail.prev_node
    new_node.next_node = nil
    @tail = new_node
    @size -= 1
  end

  def delete value
    curr = @head
    while curr
      if curr.value == value
        curr.prev_node.next_node = curr.next_node
        curr.next_node.prev_node = curr.prev_node
        break
        @size -= 1
      else
        curr = curr.next_node
      end
    end
  end

  def contains value
    found = false
    curr = @head
    while curr && not(found)
      if curr.value == value
        found = true
      else
        curr = curr.next_node
      end
    end

    return found
  end

end


dl= DLinkedList.new 4
p dl

dl.push_front 3
dl.push_front 2
dl.push_front 1
print "Push front:\n"
p dl

print "Pop front:\n"
dl.pop_front
p dl

print "Push back:\n"
dl.push_back 5
p dl

print "Pop back:\n"
dl.pop_back
p dl

print "contains 3?\n"
p dl.contains 3
print "contains 30?\n"
p dl.contains 30

print "Delete 1:\n"
dl.delete 3


p dl

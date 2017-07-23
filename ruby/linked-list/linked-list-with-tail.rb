class Node
  attr_accessor :value, :next_node

  def initialize value, next_node
    @value = value
    @next_node = next_node
  end
end

class LinkedList
  attr_accessor :head, :tail
  def initialize
    @head = nil
    @tail = nil
  end

  def push_front value
    new_node = Node.new value, @head
    @head = new_node
    unless @tail
      @tail = new_node
    end
  end

  def top_front
    @head
  end

  def pop_front
    @head = @head.next_node
    unless @head
      @tail = nil
    end
  end

  def push_back value
    new_node = Node.new value, nil
    if @tail
      @tail.next_node = new_node
      @tail = new_node
    else
      self.push_front value
    end

  end

  def pop_back
    current = @head
    while current.next_node != @tail
      current = current.next_node
    end

    current.next_node = nil
    @tail = current
  end

  def add_after node, value
    current = @head
    while current.value != node
      current = current.next_node
    end
    new_node = Node.new value, current.next_node
    current.next_node = new_node
  end

  def contains value
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

  def delete_value value
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


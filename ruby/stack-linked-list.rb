# stack implementation with linked-list

require './linked-list/linked-list.rb'

class Stack
  attr_accessor :size, :data

  def initialize
    @data = LinkedList.new
    @size = 0
  end

  def push data
    self.data.PushFront data
    @size += 1
  end

  def pop
    self.data.PopFront
    @size -= 1
  end

  def empty
    @size == 0
  end

end


stack = Stack.new
print "Created stack:"
p stack

print "empty? "
p stack.empty

stack.push "d"
stack.push "c"
stack.push "b"
stack.push "a"
p stack


stack.pop
p stack


print "empty? "
p stack.empty

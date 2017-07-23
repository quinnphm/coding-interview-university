# implementation with array
require 'linked-list.rb'

class Stack
  attr_accessor :size

  def initialize
    @size = 0
    @element = Array.new
  end

  def push data
    @element << data
    @size += 1
  end

  def pop
    @element.pop
    @size -= 1
  end

  def top
    @element.last
  end

  def empty
    not(self.top)
  end

end


stack = Stack.new
print "created stack: "
p stack

print "empty?\n"
p stack.empty
p stack

print "Push a,b,c,d\n"
stack.push "a"
stack.push "b"
stack.push "c"
stack.push "d"
p stack

print "Top of stack\n"
p stack.top

print "Pop\n"
stack.pop
p stack
print "empty?\n"
p stack.empty



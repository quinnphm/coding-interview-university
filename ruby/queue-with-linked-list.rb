require './linked-list/linked-list-with-tail.rb'

class Queue
  attr_accessor :size, :data

  def initialize
    @data = LinkedList.new
    @size = 0
  end

  def enqueue data
    self.data.push_back data
    @size += 1
  end

  def dequeue
    self.data.pop_front
    @size -= 1
  end

  def empty
    @size == 0
  end
end


queue = Queue.new
p queue
print "empty? "
p queue.empty

queue.enqueue "1"
queue.enqueue "2"
queue.enqueue "3"
queue.enqueue "4"
print "Enqueue:\n"
p queue

queue.dequeue
print "Dequeue:\n"
p queue

print "empty? "
p queue.empty

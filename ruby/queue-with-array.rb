class Queue
  attr_accessor :size, :data

  def initialize
    @size = 0
    @data = Array.new
  end

  def enqueue value
    @data << value
    @size += 1
  end

  def dequeue
    @data.shift
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

require "./linked-list.rb"

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

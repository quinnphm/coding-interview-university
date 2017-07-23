require "./linked-list-with-tail.rb"

ll = LinkedList.new
print "Linked-list created:\n"
p ll

ll.push_front(4)
ll.push_front(3)
ll.push_front(2)
ll.push_front(1)
print "Put front:\n"
p ll


ll.pop_front
print "Pop front:\n"
p ll

ll.push_back(5)
print "Push back:\n"
p ll


ll.pop_back
print "Pop back:\n"
p ll


# ll.PushBack(6)
# print "Push back with value 6:\n"
# p ll

# ll.PopBack
# print "Pop back:\n"
# p ll

# ll.AddAfter(4,10)
# print "Add 10 after 4:\n"
# p ll

# print "Linked-list contains 12?\n"
# p ll.Contains(12)

# print "Linked-list contains 2?\n"
# p ll.Contains(2)


# print "Delete 10:\n"
# ll.DeleteValue(10)
# p ll

def array
  arr = Array.new

  #init
  arr=[1,2,3,4,5,6]
  print "The array:\n"
  p arr
  #size
  print "Size:\n"
  p arr.size

  #pop
  arr.pop
  print "Pop the last element:\n"
  p arr

  #shift
  arr.shift
  print"Shift the first element:\n"
  p arr

  a= arr.find(2)
  p a
end

array




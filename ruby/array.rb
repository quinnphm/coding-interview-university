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

  arr << ("a")
  p arr
  p arr.size
end


def jagged_array
  a = Array.new(6){|i| i=Array.new(5){|i| i=0} }
  a[0][2] += 1
  p a
end



array
jagged_array



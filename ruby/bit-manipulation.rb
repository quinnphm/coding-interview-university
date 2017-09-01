def set_bit number, possition
  mask = 1 << possition
  p number | mask
end

def clear_bit number, possition
  mask = 1 << possition
  p number & ~mask
end

def flip_bit number, possition
  mask = 1 << possition
  p number ^ mask
end

def is_bit_set number, possition
  shifted = number >> possition
  p shifted & 1
end

def modify_bit number, possition, state
  mask = 1 << possition
  p (number & ~mask) | (-state & mask)
end

# set_bit number,possition
# clear_bit number, possition
# flip_bit number, possition
# is_bit_set number, possition
# modify_bit number, possition, state

# print "Enter the number: "
# number = gets.chomp.to_i
# p "The binary: %b" % number
# print "Possition you want to set: "
# possition = gets.chomp.to_i

def is_even number
  number & 1 == 0
end

def is_power_of_two number
  number & number-1  == 0
end

print "Enter the first number: "
n1 = gets.chomp.to_i
p "The binary: %b" % n1
print "Enter the second number: "
n2 = gets.chomp.to_i
p "The binary: %b" % n2

def bit_count n1, n2
  number = n1 ^ n2
  count = 0
  while number > 0
    count += 1 if number & 1 == 1
    number >>= 1
  end
  count
end

p bit_count n1, n2

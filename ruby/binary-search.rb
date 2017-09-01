array = Array.new(10000000) { |i| i }

p "Enter the string: "
s = gets.chomp.to_s
time = Time.now
p array.include?(s.to_i)
time = Time.now - time

p time


def binary_search array, value, min = 0, max = nil
  max = array.size - 1 if max.nil?
  mid = ((min+max)/2).floor
  if value < array[mid]
    binary_search array, value, min, max = mid - 1
  elsif value > array[mid]
    binary_search array, value, min = mid + 1, max
  elsif value == array[mid]
    true
  end
end

time = Time.now
p binary_search array,s.to_i
time = Time.now - time
p time

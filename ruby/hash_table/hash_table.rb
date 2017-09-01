# hash table with chaining - division method hash function and ASCII encoding
require '/home/qmau94/workspace/coding-interview-university/ruby/linked-list/linked-list-with-tail.rb'
require 'prime'
BASE = 256

class HashTable
  attr_accessor :data, :size, :count

  def initialize
    @data = Hash.new {|hash,key| hash[key]= LinkedList.new}
    @size = 0
  end

  def insert string, prime
    key = hash(to_digit(string), prime)
    self.data[key].push_front(string)
    @size += 1
  end

  def search string, prime
    key = hash(to_digit(string), prime)
    if (self.data[key]) && (self.data[key].contains string)
      true
    else
      false
    end
  end

  def to_digit string
    len = string.length
    sum = 0
    (0..len-1).each do |i|
      sum += string[i].ord * BASE**(len-i-1)
    end
    sum
  end

  def get_prime len
    len += 1
    m = []
    while m.size < 10 do
      if Prime.prime?(len)
        m << len
        len += 1
      else
        len += 1
      end
    end
    m[rand(10)]
  end

  def hash key, prime
    key % prime
  end

  def load_text file, prime
    File.open(file, "r") do |file|
      file.each_line do |line|
        words = line.split " "
        words.each do |word|
          self.insert word, prime
        end
      end
    end
  end
end

h = HashTable.new
print "Enter the string: "
s = gets.chomp.to_s #get the string
s_len = s.length #string length
m = h.get_prime(s_len) #get the prime m
h.load_text("text.txt", m)
p h.search(s, m)

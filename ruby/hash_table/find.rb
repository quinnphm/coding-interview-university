print "Enter the string: "
s = gets.chomp.to_s #get the string

found = false
File.open("text.txt", "r") do |file|
  file.each_line do |line|
    words = line.split " "
    if words.include?(s)
      found = true
      break
    end
  end
end

p found

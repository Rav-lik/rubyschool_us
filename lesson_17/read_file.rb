input = File.open("test.txt", "r")
while (line = input.gets)
  puts line
end

input.close
# input.each_with_index { |line, i| puts i.to_s + line }
# output = File.open("output.txt", "w")
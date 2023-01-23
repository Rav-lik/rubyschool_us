output = File.open('passwords.txt', 'r+')
# while line = output.gets
#   puts line
# end
# input = File.open('passwords2.txt', 'w+')
# output.each { |line| puts line if line.size >= 6 }
output.each do |line| 
  if line.strip.size == 6 
    puts line
    # input.write line
  end
end 

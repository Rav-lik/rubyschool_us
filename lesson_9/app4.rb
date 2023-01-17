require 'pry'
arr = []
# loop do
#	puts "Enter your favorite color ( or 'stop' to exit)"
#	answer = gets.chomp.capitalize
#	if answer == 'Stop'
# puts
# puts arr
#	exit
# elsif arr.includes? answer
# else
#	arr << answer
# end
# end
answer = nil

while answer != 'Stop'

  puts "Enter your favorite color ( or 'stop' to exit)"
  answer = gets.chomp.capitalize
  if answer == 'Stop'
    puts
    puts arr.uniq.reverse
    # elsif arr.include? answer
  else
    arr << answer
  end
end

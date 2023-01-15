loop do

puts 'Choose number at 1 to 50: '
y = gets.to_i

x = rand(1..50)

if x == y
  puts 'Welcome to USA'
elsif
  y == 0
  exit
else
  puts "Sorry. Win number is #{x}"
end
end

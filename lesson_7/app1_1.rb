print 'Print how many times will play: '
y = gets.to_i
z = 26

y.times do |i|
  x = rand(1..50)
  if x == z
    puts "Welcome to USA. You win at #{i + 1} times"
  end
end

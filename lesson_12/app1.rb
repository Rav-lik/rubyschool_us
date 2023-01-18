require 'pry-byebug'
arr = []
hh = {'111' => 10,
  '222' => 20,
  '333' => 0,
  "444" => 100,
  '555' =>  5,
  '777' => 1000,
  '888' => 0
}
@balance = 20

def animated_number
  9.times do |i|
    print "\b#{i}"
    sleep rand(0.01..0.03)
  end
end

def victory?
  if @balance > 1000
    puts '=============='
    puts "You are win with balance #{@balance}"
    exit
  end
end

def loss_check?
  if @balance <= 0
    puts 'You lose'
    exit
  end
end


puts 'Hello. Play the game?'
print 'Enter your age: '
age = gets.to_i
if age < 18
  puts 'Goodbuy'
  exit
end

loop do
  puts 'For starting press Enter'
  gets

=begin  print 'Result: '
    animated_number
    x = rand(3..6)
    arr << x
    print "\b#{x} "

    animated_number
    y = rand(3..6)
    arr << y
    print "\b#{y} "

    animated_number
    z = rand(3..6)
    arr << z
    print "\b#{z} "



  puts

  result = ''

  result = arr.join

 binding.pry
=end
  result = rand(100..999).to_s
  puts result
  if hh.has_key?(result)
    @balance += hh[result]
    puts "Yor balance grow up for #{hh[result]} and now your balance is #{@balance}"
  elsif result == '666'
    puts 'You die. Muhahahah!'
    exit
  elsif result == "999"
    puts 'You wins ass!'
    @balance = @balance * 1000
  elsif result == '333'
    puts 'Nothing'
  else
    @balance -= 1
    puts "Try again. Balance is #{@balance}"
  end

  victory?
  loss_check?
end




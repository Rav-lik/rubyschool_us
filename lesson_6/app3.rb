puts 'How much money will we save per month?'
money = gets.to_i

puts 'How many month?'
n = gets.to_i

s = 0
y = 0

1.upto(n) do |mm|
    s = s + money
    y = mm / 12
    if mm < 12
      puts "Accumulation at #{mm} month:\t\t#{s}"
    elsif mm == y * 12
      puts "Accumulation at #{y} year:\t\t\t#{s}"
    else
      puts "Accumulation at #{y} year, #{mm - y * 12} month:\t#{s}" 
    end   
end       
  
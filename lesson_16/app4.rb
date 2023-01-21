add_10 = lambda { |x| x + 10 }
add_20 = lambda { |x| x + 20}
sub_5 = lambda { |x| x - 5}


balance = 1000
hh = { 
  111 => add_10,
  222 => add_10, 
  333 => add_20,
  444 => add_20,
  555 => add_20,
  666 => sub_5,
  777 => sub_5,
  888 => sub_5,
  999 => sub_5 
}

loop do
  x = rand(100..999)
  puts "combination #{x}"

  if hh[x]
    balance = hh[x].call balance
    puts 'Lambda calls'
  end
  
  puts "Balance: #{balance}"
  puts 'Press enter to continue...'
  gets
end

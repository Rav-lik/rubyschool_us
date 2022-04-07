puts 'Salary' #changed double quates to single quates
salary = gets.to_i

puts 'Tax'
tax = gets.to_f

puts 'Final'
puts salary - salary * tax

puts 'Annual salary'
puts salary * tax
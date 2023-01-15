puts 'Enter A: '
a = gets.strip.to_f

puts 'Enter B: '
b = gets.strip.to_f

puts 'What will we do? (+ - * / **{exponentiation})'
c = gets.strip

print 'Result: '

if c == "+"
	puts a + b
elsif c == "-"
	puts a - b
elsif c == "*"
	puts a * b
elsif c == "/"
	if b == 0
		puts 'Error. Can\'t divide by zero'
	end
	puts a / b
elsif c == "**"
	puts a ** b
elsif c.empty?
	puts 'You don\'t choose method of calc working'
else 
	puts 'Unidentified method, choose another method of calc working'
end

a = 50
b = 20
puts "a=#{a}, b=#{b}"
# change a value of the variables if objects
a, b = b, a
puts "a=#{a}, b=#{b}"

# change a value of the variables if integers
a = a + b
b = a - b
a = a - b
puts "a=#{a}, b=#{b}"
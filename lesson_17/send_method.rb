puts 'Print the name of method:'
method_name = gets.strip
puts 'Print what the method will do:'
method_in_block = gets.strip
puts 'Print what the arg you what to send to ypur method:'
arg_in_block = gets.strip


send :define_method, method_name do
  send method_in_block, arg_in_block, ?!
end

puts 'Print what comand you want to use:'

send gets.strip

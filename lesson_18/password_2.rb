puts 'Enter your password:'
password = gets.strip.downcase
input = File.open('passwords.txt', 'r+')

# input.each do |line|
#   if line.strip == password
#     puts 'Your password is weak'
#     exit
#   end
# end

while (line = input.gets)
  if password.include? line.strip
    puts 'Your password is weak'
    exit
  end
end

puts 'Your password is not weak'

def is_password_weak?(password)
  input = File.open('passwords.txt', 'r')
  while (line = input.gets)
    break true if password.include? line.strip
  end
end
 
puts 'Enter your password:'
password = gets.strip.downcase

if is_password_weak?(password)
  puts 'Your password is weak'
else
  puts 'Your password is not weak'
end

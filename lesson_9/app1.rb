def get_password
	print "Type password: "
	return gets.chomp
end

xx = get_password

puts "Password has been entered: #{xx}"
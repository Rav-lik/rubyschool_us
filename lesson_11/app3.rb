hh = {}
#name = ""

#def close
#	if @name.empty?
#		puts @hh
#		return exit
#	end 
#end

loop do
	print 'Enter name (Enter to stop): '
	name = gets.strip.capitalize
#	close
	if name.empty?
		break
	end

	print 'Enter a phone number: '
	phone = gets.strip
	
	hh[name] = phone
end

puts '=================='
puts
puts "Name\t-\tPhone"
hh.each do |k, v|
	puts "#{k}\t-\t#{v}"
end

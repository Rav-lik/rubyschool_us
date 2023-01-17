
def get_command
	cmd = [:left, :right, :up, :down]
	x = rand(0..3)
	cmd[x]
end

command = get_command

puts "Comand received: #{command}"
puts "Robot go #{command}"

#if command == :left
#	puts "Robot go left"
#elsif command == :right
#	puts "Robot go right"
#elsif command == :up
#	puts "Robot go up"
#else
#	puts "Robot go down"
#end

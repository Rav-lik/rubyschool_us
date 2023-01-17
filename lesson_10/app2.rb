@arr = []

def add_items
   	arr2 = []
   	print 'Enter name to add: '
	name = gets.strip
	
	print 'Enter age: '
	age = gets.strip
	
	arr2 << name if name != ""
	arr2 << age
	@arr << arr2 if arr2.size == 2
end

def display_items
	@arr.each_index do |x|
		puts "#{x + 1} #{@arr[x][0].capitalize}, #{@arr[x][1]}"
	end
end

def remove_items
	print 'Who to remove? '
	rm = gets.to_i
if rm <= @arr.size && rm > 0
	@arr.delete_at rm - 1
	display_items
else
end
end

def exit_proc
	if @arr.size == 0
		puts 'That\'s all'
		exit
	end
end

loop do
	add_items
	display_items
	remove_items
	exit_proc
end



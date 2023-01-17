arr = %w(walt hank jr jessie lidia)

while (arr.size != 0) do
  arr.each_index do |x|
    puts "#{x+1}. #{arr[x].capitalize}"
  end   
#alternative variant of code                
#x = 1
#arr.each do |name|
#  puts "#{x}. #{name.capitalize}"
#  x =+ 1
#end
#code for remove from list
  print 'Who to remove? / Who you want to kill? (number) '
  rm = gets.to_i
  if rm <= arr.size && rm > 0
    arr.delete_at rm - 1
  elsif rm == 0
  else
    puts 'Such number does not exist. Choose right number'
  end
#code for add to the list
print 'Who to add? '
ad = gets.strip
#arr << ad if ad.empty? != true

if ad.empty?
  exit
end
  arr << ad

end
puts 'That\'s all' if arr.size == 0


#arr2 = arr[1..3]
#arr2[1].capitalize!
#puts arr2
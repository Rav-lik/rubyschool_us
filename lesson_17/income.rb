input = File.open("income.txt", "r+")
total = 0
arr = []

while (line = input.gets)
  arr_line = line.split(",").map(&:strip)

  arr << line if arr_line.first != 'April'

  puts "Income at #{arr_line.first}: #{arr_line.last} "
  total += arr_line.last.to_i
  puts "Income at first 6 monthes #{total}" if input.lineno == 6

  if arr_line.first == 'March'
    arr << ("April, 100\n")
  end
end

puts "Total income at year: #{total}"
puts '=' * 10
# input.close
# input = File.open("income.txt", "r+")
input.rewind
input.each { |line| p line }
puts '=' * 10
# input.close
# input = File.open("income.txt", "r+")
input.rewind
arr.each { |line| input.write line }
# input.close
# input = File.open("income.txt", "r+")
input.rewind
input.each { |line| p line }

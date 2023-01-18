require 'pry-byebug'
dict = {
  'dog' => ['собака', 'пёс'],
  'cat' => ['кошка', 'кот'],
  'girl' => ['девушка']
}
binding.pry
loop do
  print 'Enter word (Press enter to exit): '

  word = gets.downcase.strip

  break if word.empty?

  if dict.has_key? word 
    puts "Quantity of the translation of word: #{dict[word].size}"
    puts 'Translations:'
    puts dict[word]
  else
    puts 'No such word in dictionary. Enter another one'
  end
end

puts '====================='
puts 'Thanks for using our dictionary'

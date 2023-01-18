dict = {
  'dog' => 'собака',
  'cat' => 'кошка',
  'girl' => 'девушка'
}

loop do
  print 'Enter word (Press enter to exit): '

  word = gets.downcase.strip

  break if word.empty?

  dict.has_key?(word) ? (puts "Translation of word: #{dict[word]}") : (puts 'No such word in dictionary. Enter another one')
end

puts '====================='
puts 'Thanks for using our dictionary'

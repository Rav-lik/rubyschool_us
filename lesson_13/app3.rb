def show_book book
  file = File.open('file2.html', 'w+')
  file.puts '<body>'
  file.puts '==================<br>'
  book.each { |k, v|  file.puts "<i>Name:</i> #{k}, <i>age:</i> <b>#{v}</b> <br>" }
  file.puts '==================<br>'
end

book1 = {'Mike' => 65, 'Jessie' => 25}

book2 = {'Walt' => 50, 'Lidia' => 42}
book3 = book1.merge book2
show_book book3
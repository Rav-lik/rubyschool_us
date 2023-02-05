require 'sqlite3'

db = SQLite3::Database.new 'barbershop.db'
db.results_as_hash = true

# using standart result (array) of query in sqlite
# db.execute 'SELECT * FROM Users' do |row|
#   print row[1]
#   print "\t-\t"
#   puts row[3]
#   puts '==========='
# end

# using result as hash of query in sqlite
db.execute 'SELECT name, date_stamp FROM Users' do |row|
  print row['name']
  print "\t-\t"
  puts row['date_stamp']
  puts '==========='
end

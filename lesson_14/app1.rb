class Book

  def initialize
    @hh = {}
  end  

  def add_person(options)
    
    puts "Human with name: #{options[:name]} is added before" if @hh[options[:name]]
    @hh[options[:name]] = options[:age]
    @last_person = options[:name]
  end

  def show_hash
    @hh.each_key { |key| puts "Name: #{key}, age: #{@hh[key]}" }
    #p @hh
  end

  def last_person
    @last_person
  end
  
end
b = Book.new

loop do
  print 'Enter name: '
  name = gets.strip.capitalize
  (b.show_hash and break) if name.empty?
  print 'Enter age: '
  age = gets.chomp.to_i
  options = { name:, age: }
  b.add_person options
end

puts b.last_person

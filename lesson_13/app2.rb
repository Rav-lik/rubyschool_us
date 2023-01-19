@hh = {}

def add_person(options)
  puts "Human with name: #{options[:name]} is added before" if @hh[options[:name]]
  @hh[options[:name]] = options[:age]
end

def show_hash
  @hh.each_key { |key| puts "Name: #{key}, age: #{@hh[key]}" }
  p @hh
end

loop do
  print 'Enter name: '
  name = gets.strip.capitalize
  (show_hash and break) if name.empty?
  print 'Enter age: '
  age = gets.chomp.to_i
  options = { name:, age: }
  add_person options
end

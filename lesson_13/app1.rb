@hh = {}

def add_person(name, age)
  puts "Human with name: #{name} is added before" if @hh[name]
  @hh[name] = age
end

def show_hash
  @hh.each_key { |key| puts "Name: #{key}, age: #{@hh[key]}" }
end

loop do
  print 'Enter name: '
  name = gets.strip.capitalize
  (show_hash and break) if name.empty?
  print 'Enter age: '
  age = gets.chomp.to_i
  add_person name, age
end

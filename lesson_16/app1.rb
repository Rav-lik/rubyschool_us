class Animal
  
  def initialize name
    @name = name
  end

  def run
    puts "#{@name} is running"
  end

  protected
  def jump
    puts "#{@name} is jumping"
  end

  private

  def eat
    puts 'I am eating'
  end
end

def sleep
  puts "I am sleeping (#{@name})"
end 


cat = Animal.new 'Cat'
# cat.jump

class Dog < Animal

  def initialize
    super 'Dog'
  end

  def bark
    eat
    puts 'Woof-woof!'
    cat.jump
  end
end

dog = Dog.new
dog.bark

class Man
  def self.say_hi phrase
    puts phrase
  end
end

class Manager < Man
  def self.say_hi
    super 'Hi'
  end
end

class Hipster < Man
  def self.say_hi
    super 'Hiiii, yo!'
  end
end

class Jessie_Pinkman < Man
  def self.say_hi
    super 'Hi, bitch!'
  end
end

Manager.say_hi

Hipster.say_hi

Jessie_Pinkman.say_hi 

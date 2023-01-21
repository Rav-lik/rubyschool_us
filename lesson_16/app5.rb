module Humans
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

    def say_hi
      puts 'Hiiii, yo!'
    end

  end

  class Jessie_Pinkman < Man
    def self.say_hi
      super 'Hi, bitch!'
    end
  end
end

Humans::Manager.say_hi

Humans::Hipster.say_hi

Humans::Jessie_Pinkman.say_hi 

hipste = Humans::Hipster.new
hipste.say_hi

class Something

  attr_accessor :x, :y
  
  def initialize(hh={})
    @x = hh[:x]
    @y = hh[:y]
  end
end

s = Something.new x: 1

puts s.x
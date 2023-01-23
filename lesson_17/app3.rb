class Something

  attr_accessor :name, :x, :y

  def initialize hh
    hh.each do |k, v|
      send "#{k}=", v
    end
  end
end

s = Something.new x: 1, y: 2

puts s.inspect
puts s.x
p s

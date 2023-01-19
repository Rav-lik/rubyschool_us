class Airplane
  attr_reader :model, :altitude, :speed

  def initialize(model)
    @model = model
    @speed = 0
    @altitude = 0
  end

  def fly
      @speed = 800
    @altitude = 10_000
  end

  def land
    @speed = 0
    @altitude = 0
  end

  def info
    puts "Model: #{self.model}, Speed: #{self.speed}, Alt: #{self.altitude}."
  end
end

models = %w[Airbus-320 Boeing-777 Il-86]
planes = []
1000.times do
  model = models[rand(0..2)]
  plane = Airplane.new(model)
  plane.fly if rand(0..1).zero?
  planes << plane
end

planes.each_with_index do |plane, ind|
  print "#{ind +1}. "
  plane.info 
end

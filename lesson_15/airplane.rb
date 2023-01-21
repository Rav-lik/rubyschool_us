#!/usr/bin/env ruby
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

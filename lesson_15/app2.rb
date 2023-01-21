#!/usr/bin/env ruby
require './airplane.rb'

class Country
  attr_accessor :name
  attr_reader :airports
  
  def initialize(name)
    @name = name
    @airports = []
  end

  def add_airports(airport)
    @airports.push(*airport)
  end

  def show_all
    count = 0
    puts "Country - #{self.name} has #{self.airports.size} airports:"
    self.airports.each do |port|
      count += 1
      puts "\t#{count}. #{port.name} has #{port.planes.size} planes:"
      plane_count = [*?a..?z]
      port.planes.each_with_index do |plane, ind|
        puts "\t\t#{plane_count[ind]}. #{plane.model}."
      end
    end
  end
end

class Airport
  attr_accessor :name
  attr_reader :planes

  def initialize(name)
    @name = name
    @planes = []
  end

  def add_planes(plane)
    @planes.push(*plane)
  end
end

planes_name = %w[Boeing-777 Il-76 A-320]

country1 = Country.new 'Kazakhstan'
airport1 = Airport.new 'Astana'
airport2 = Airport.new 'Almaty'
planes1 = Array.new(rand(3) + 1) { plane = Airplane.new "#{planes_name[rand(3)]}" }
planes2 = Array.new(rand(5) + 1) { plane = Airplane.new "#{planes_name[rand(3)]}" }

country1.add_airports([airport1, airport2])
airport1.add_planes(planes1)
airport2.add_planes(planes2)

country1.show_all

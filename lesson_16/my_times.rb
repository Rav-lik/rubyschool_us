class Integer

  def my_times

    # What's best practice? Both variants are working
    # x = self
    # x = itself

    x = self 
    n = 0
    while n < x
      yield n
      n += 1
    end
  end
end

5.my_times { |i| puts "Bla-bla #{i}" }
puts '=' * 10
5.times { |i| puts "Bla-bla #{i}" }

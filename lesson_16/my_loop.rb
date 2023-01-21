# Where I can make monkey patching?
# class Object or module Kernel?
module Kernel
  def my_loop
    yield while true
  end
end


my_loop do |x|
  puts x  
end
# pr = Proc.new { |a| puts a * a}
pr = proc { |a| p a * a }
# lb = lambda { |a| puts a * a}
lb = ->(a) { p a * a }

arr = [*1..5]

arr.each { |i| lb.call i }
puts '=' * 10
# arr.each { |i| pr.call i }
arr.each(&pr) 

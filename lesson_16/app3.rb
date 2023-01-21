say_hi = lambda { puts 'Hi' }
say_bye = lambda { puts 'Bye' }

week = [ say_hi, say_hi, say_hi, say_hi, say_hi, say_bye, say_bye ]

week.each { |f| f.call }

sub_10 = lambda { |x| x - 10 }
puts sub_10.call 1000
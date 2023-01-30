f = File.open('file.txt', 'a+')
@hh = {}

arr = f.read.split(%r{,\s*})
arr.map! { |x| x.split(%r{:\s*}) }
arr.each do |x|
  case x[0]
  when 'User'
    @hh[:user_name] = x[1]
  when 'phone'
    @hh[:phone] = x[1]
  when 'date and time'
    @hh[:date_time] = x[1]
  end
end

# puts @hh.inspect
puts @hh[:user_name].class
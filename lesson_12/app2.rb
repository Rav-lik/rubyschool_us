#Tic-Tac-Toe

###Instance variable
@field = {
  '1' => {'1' => 1, '2' => 2, '3' => 3},
  '2' => {'1' => 1, '2' => 2, '3' => 3},
  '3' => {'1' => 1, '2' => 2, '3' => 3}
}

###Methods
def print_field
  puts '==============='

  @field.each do |_,v_1|
    puts
    v_1.each do |_, v_2|
      print "#{v_2} "
    end
  end
end

def pc_move
  
  hh = {
    '1' => [],
    '2' => [],
    '3' => []
  }

  arr = []

  @field.each do |k_1, v_1|
    v_1.each do |k_2, v_2|
      if v_2.class == Integer
        hh[k_1] << v_2
      end
    end
  end

  hh.delete_if { |k, v| v.empty? }

  hh.each { |k, _| arr << k }

  y = arr[rand(arr.size)]
  x = hh[y][rand(hh[y].size)].to_s

  @field[y][x] = 'o'
end

###Victory check
def victory?

  field_player = {
    '1' => {'1' => 'x', '2' => 'x', '3' => 'x'},
    '2' => {'1' => 'x', '2' => 'x', '3' => 'x'},
    '3' => {'1' => 'x', '2' => 'x', '3' => 'x'}
  }

  field_pc = {
    '1' => {'1' => 'o', '2' => 'o', '3' => 'o'},
    '2' => {'1' => 'o', '2' => 'o', '3' => 'o'},
    '3' => {'1' => 'o', '2' => 'o', '3' => 'o'}
  }

  if @field['1'] == field_player['1'] ||
     @field['2'] == field_player['2'] ||
     @field['3'] == field_player['3'] ||
     ( @field['1']['1'] == field_player['1']['1'] &&
      @field['2']['2'] == field_player['2']['2'] &&
      @field['3']['3'] == field_player['3']['3'] ) ||
     ( @field['1']['3'] == field_player['1']['3'] &&
      @field['2']['2'] == field_player['2']['2'] &&
      @field['3']['1'] == field_player['3']['1'] ) 
    puts 'You win. Congratulations!'
    print_field
    return true
  elsif @field['1'] == field_pc['1'] ||
        @field['2'] == field_pc['2'] ||
        @field['3'] == field_pc['3'] ||
        ( @field['1']['1'] == field_pc['1']['1'] &&
          @field['2']['2'] == field_pc['2']['2'] &&
          @field['3']['3'] == field_pc['3']['3'] ) ||
        ( @field['1']['3'] == field_pc['1']['3'] &&
          @field['2']['2'] == field_pc['2']['2'] &&
          @field['3']['1'] == field_pc['3']['1'] ) 
    puts 'You lose!'
    print_field
    return true
  end

  false
end

###Main loop
loop do
  print_field

  puts
  puts
  puts 'Push Enter to exit at any step'

  puts 'Your move on x (Push Enter to exit):'
  x = gets.downcase.strip

  exit if x.empty?

  puts 'Your move on y (Push Enter to exit):'
  y = gets.downcase.strip

  exit if y.empty?

  @field[y][x] = 'x'

  pc_move

  exit if victory?

end

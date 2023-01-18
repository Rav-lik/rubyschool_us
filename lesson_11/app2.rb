#terms
:rock > :scissors
:scissors > :paper
:paper > :rock
#matrix = [
#	[:rock, :scissors, :player_win],
#	[:rock, :rock, :draw],
#	[:paper, :rock, :player_win],
#	[:paper, :paper, :draw],
#	[:scissors, :scissors, :draw],
#	[:scissors, :paper, :player_win]
#]

#objects
arr = [:rock, :scissors, :paper]

loop do
	puts '====================='
	pc = arr[rand(0..2)]

	print '(R)ock, (S)cissors, (P)aper '
	answer = gets.strip.upcase

	if answer == "R"
		player = :rock
	elsif answer == "S"
		player = :scissors
	elsif answer == "P"
		player = :paper
	elsif answer.empty?
		exit
	end
           		
	if player > pc
		puts 'Player wins'
	elsif player == pc
		puts 'Draw'
	else
		puts 'PC wins'
	end
        puts 
#	matrix.each do |item|
#		if item[0] == player && item[1] == pc
#			puts "#{item[2]}"
#		end
#	end

end


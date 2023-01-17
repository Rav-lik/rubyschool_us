#terms
:rock > :scissors
:scissors > :paper
:paper > :rock

#objects
arr = [:rock, :scissors, :paper]

loop do
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
end


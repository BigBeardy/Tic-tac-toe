def update_board(board,player,choice)
	p board
	p player
	p choice
	board[choice-1] = player
	board
end

def valid_space(board,choice)
	choice = choice-1
	if choice > 9
		false
	elsif choice < 1
		false
	elsif board[choice] == "x" || board[choice] == "o"
		false 
	else 
		true
	end
end

def changing_players
	if player == "x"
		player = "o"
	else player = "x"
	end







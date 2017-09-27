def update_board(board,player,choice)
	p board
	p player
	p choice
	board[choice-1] = player
	board
end

def movepick(player,choice)
    board = ["1","x","3","4","5","6","7","8","9"]
end

def move(player,choice)
    board = ["1","2","3","4","5","6","7","8","9"]  
    board[choice - 1] = player

    board
end  

def makemove(board,player,choice)  
    board[choice - 1] = player

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

def change_players(player)
	if player == "x"
		player = "o"
	else player = "x"
	end
end

def winningcombos(board)

    [[board[0], board[1], board[2]],
     [board[0], board[4], board[8]],
     [board[0],board[3], board[6]],
     [board[3], board[4], board[5]],
     [board[6], board[7], board[8]],
     [board[6], board[4], board[2]],
     [board[1], board[4], board[7]],
     [board[2], board[5], board[8]]]
	# 
end

def winning(board,player)
	emp_array =[]
	winningcombos(board).each do |combos|
		if combos[0] == player && combos[1] == player && combos[2] == player
			emp_array << true
		else
			emp_array << false
		end
	end
	emp_array.include?(true)
end

def fullboard(board)
    if board.include?("1") ||
       board.include?("2") ||
       board.include?("3") ||
       board.include?("4") ||
       board.include?("5") ||
       board.include?("6") ||
       board.include?("7") ||
       board.include?("8") ||
       board.include?("9")
        false
    else
        true
    end
end

# def samesign(winning)
# 	if combos[0] == combos[1]








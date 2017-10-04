require_relative 'functionpg.rb'


def tictack
board = ["1","2","3","4","5","6","7","8","9"]
player = "x"
game = "begin"
until game == "end" do
p "#{board[0]}|#{board[1]}|#{board[2]}"
		p "-|-|-"
p "#{board[3]}|#{board[4]}|#{board[5]}"
        p "-|-|-"
p "#{board[6]}|#{board[7]}|#{board[8]}"
choice = gets.chomp.to_i 
if valid_space(board,choice) == false
	p "wrong number"
else update_board(board,player,choice)
		if winning(board,player) == true
		p "player#{player} wins"
       game = "end"
	    else 
			if fullboard(board) == true 
			p "tie game"
		     game = "end" 
		    else 
		 	player = change_players(player)
		 	end
		end
end


end
end
tictack
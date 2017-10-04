require_relative "board.rb"
require_relative "p_class.rb"
class Console

	attr_accessor :board, :player1,:player2, :current_player 
	def initialize(player1,player2)
		@player1 = player1
		@player2 = player2
		@board = Board.new
		@current_player = player1
	end 
def print_board
p "#{board.tttboard[0]}|#{board.tttboard[1]}|#{board.tttboard[2]}"
		p "-|-|-"
p "#{board.tttboard[3]}|#{board.tttboard[4]}|#{board.tttboard[5]}"
        p "-|-|-"
p "#{board.tttboard[6]}|#{board.tttboard[7]}|#{board.tttboard[8]}"
end

def get_move
	current_player.move(board.tttboard)
end

def consoleupdate(move)
	board.update_board(current_player.player,move)
end 


def checkval(choice)
	if board.valid_space(board.board,choice) == true 
		board.ud(current_player.marker,choice)
	else 
		p "no completion"
		get move
	end
end

def change_players
	if current_player == player1
		@current_player = player2
	else current_player == player2
		@current_player = player1
	end
end
end
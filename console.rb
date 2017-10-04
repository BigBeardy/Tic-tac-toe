require_relative "board.rb"
require_relative "p_class"
class Console

	attr_accessor :board, :player
	def initialize(player1,player2)
		@player1 = player1
		@player2 = player2
		@board = board.new
		@current_player = player1
	end 
def printboard
p "#{board[0]}|#{board[1]}|#{board[2]}"
		p "-|-|-"
p "#{board[3]}|#{board[4]}|#{board[5]}"
        p "-|-|-"
p "#{board[6]}|#{board[7]}|#{board[8]}"
end

def get_move
	current_player.move(board.board)
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
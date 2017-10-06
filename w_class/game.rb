require_relative "console.rb"

game = Console.new(Playerhuman.new("x"),Playerrandom.new("o"))
# game = "run"
current_player = @player1
until game == "done" do
	game.print_board 
	move = game.get_move
	game.checkval(move)
	if game.board.winning(game.board.tttboard,game.current_player.marker) == true
p " you win #{game.current_player.marker}"
		game = "done"
p "##################"
	elsif game.board.full_board == true 
p "tie game"
	else
	game.change_players
	end
p "##################"
	# game.print_board 
		# if game.board.win(game.board,game.current_player.player)
		# 	p "player #'{game.current_player.player}' Wins"
		# game = "done"
		# elsif
		# 	p " you lose"
		# game = "done"
	 #    end
end 

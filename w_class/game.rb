require_relative "console.rb"

game = Console.new(Playerseq.new("x"),Playerseq.new("o"))
# game = "run"
until game == "done" do 
	game.print_board 
	move = game.get_move
	game.consoleupdate(move)
	p "##################"
	game.change_players
	move = game.get_move
	# game.consoleupdate(move)
	p "##################"

	
	# game.checkval(move)
	# # game.print_board 
	# 	if game.board.win(game.board,game.current_player.player)
	# 		p "player #{game.current_player.player} Wins"
	# 	else 
	# 		p " you lose"
	# 	game = "done"
	# 	end
end 

require_relative "console.rb"

game = Console.new(Playerseq.new("x"),Playerseq.new("o"))
game = "run"
	until game == "done" do 
	game.print_board 
	move = game.get_move
	game.checkval(move)
	game.print_board 
	game.player_sel
	if game.board.win(game.board,game.current_player.marker)
	p "player #{game.current_player.marker} Wins"
	else 
	p " you lose"
	game = "done"
	end 
end
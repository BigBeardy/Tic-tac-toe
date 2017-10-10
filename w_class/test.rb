require 'minitest/autorun'
# require_relative "functionpg.rb"
require_relative "sequenceAI.rb"
require_relative "randomAI.rb"
require_relative "unbeatableAI"

class TestArr < Minitest::Test
	# def test_update_board
	#   board = ["1","2","3","4","5","6","7","8","9"]
	#   player = "x"
	#   choice = 2 
	#   assert_equal(["1","x","3","4","5","6","7","8","9"],update_board(board,player,choice))
	# end
	
	# def test_update_board5
	#   board = ["1","x","3","4","5","6","7","8","9"]
	#   player = "x"
	#   choice = 5
	#   assert_equal(["1","x","3","4","x","6","7","8","9"],update_board(board,player,choice))
	# end
	
	# def test_update_board7
	#   board = ["1","x","3","4","5","6","7","8","9"]
	#   player = "x"
	#   choice = 7
	#   assert_equal(["1","x","3","4","5","6","x","8","9"],update_board(board,player,choice))
	# end
	
	# def test_valid_space2
	# 	board = ["1","x","3","4","x","6","7","8","9"]
	# 	choice = 2
	# 	assert_equal(false,valid_space(board,choice))
	# end
	
	# def test_falsetest
	# 	board = ["1","x","3","4","x","6","7","8","9"]
	# 	choice = 6
	# 	assert_equal(true,valid_space(board,choice))
	# end 

	# def test_change_players
	# 	player = "x"
	# 	assert_equal("o",change_players(player))
	# 	true
	# end 
	# def test_winning
	# 	board = ["x","x","x","4","x","6","7","8","9"]
	# 	player ="x"
	# 	assert_equal(true, winning(board,player))
	# end
	# def test_winningcombo0
	# 	board = ["x","x","x","4","5","6","7","8","9"]
	#   player = "x"
	#   choice = 2 
	#    assert_equal(true, winning(board,player))
	# end
	# def test_winningcombo1
	# 	board = ["1","2","3","x","x","x","7","8","9"]
	#   player = "x"
	#   choice = 2 
	#    assert_equal(true, winning(board,player))
	# end
	# def test_winningcombo2
	# 	board = ["1","2","3","4","5","6","x","x","x"]
	#   player = "x"
	#   choice = 2 
	#    assert_equal(true, winning(board,player))
	# end
	# def test_winningcombo3
	# 	board = ["x","2","3","x","5","6","x","8","9"]
	#   player = "x"
	#   choice = 2 
	#    assert_equal(true, winning(board,player))
	# end
	# def test_winningcombo4
	# 	board = ["1","x","3","4","x","6","7","x","9"]
	#   player = "x"
	#   choice = 2 
	#    assert_equal(true, winning(board,player))
	# end
	# def test_winningcombo5
	# 	board = ["1","2","x","4","5","x","7","8","x"]
	#   player = "x"
	#   choice = 2 
	#    assert_equal(true, winning(board,player))
	# end
	# def test_winningcombo6
	# 	board = ["x","2","3","4","x","6","7","8","x"]
	#   player = "x"
	#   choice = 2 
	#    assert_equal(true, winning(board,player))
	# end
	# def test_winningcombo7
	# 	board = ["1","2","x","4","x","6","x","8","9"]
	#   player = "x"
	#   choice = 2 
	#    assert_equal(true, winning(board,player))
	# end
	# def test_fullboard
	# 	board = ["x","o","x","o","x","o","x","x","x"]
	#   player = "x"
	#   choice = 2 
	#    assert_equal(true, fullboard(board))
	# end
	# def test_fullboard
	# 	board = ["x","2","x","o","x","o","x","x","x"]
	#   player = "x"
	#   choice = 2 
	#    assert_equal(false, fullboard(board))
	# end
	def test_seq_first_move
		marker = "o"
		player = Playerseq.new(marker)
		board = ["1","2","3","4","5","6","7","8","9"]
		assert_equal(1,player.move(board))
	end
	def test_seq
		marker = "o"
		player = Playerseq.new(marker)
		board = ["x","o","x","o","5","6","7","8","9"]
		assert_equal(5,player.move(board))
	end
	def test_random
		marker = "o"
		player = Playerrandom.new(marker)
		board = ["x","o","x","o","x","o","x","o","9"]
		assert_equal(9,player.move(board))
	end
	def test_random2
		board = ["x","o","x","o","x","o","7","8","9"]
		marker = "o"
		player = Playerrandom.new(marker).move(board)
		assert_equal(true,[7,8,9].include?(player))
	end
	def test_random3
		board = ["x","o","x","4","5","6","7","8","9"]
		marker = "o"
		player = Playerrandom.new(marker).move(board)
		assert_equal(true,[4,5,6,7,8,9].include?(player))

	end
	def test_for_win
		marker = "x"
		player = Playerunbeatable.new(marker)
		board = ["x","x","3","4","5","6","7","8","9"]
		assert_equal(3,player.move(board))
	end 
	def test_for_win2
		marker = "x"
		player = Playerunbeatable.new(marker)
		board = ["1","2","3","4","5","6","7","x","x"]
		assert_equal(7,player.move(board))
	end
	def test_for_win3
		marker = "x"
		player = Playerunbeatable.new(marker)
		board = ["x","2","3","4","5","6","7","8","x"]
		assert_equal(5, player.move(board))
	end
	def test_for_win4
		marker = "x"
		player = Playerunbeatable.new(marker)
		board = ["1","x","3","4","x","6","7","8","9"]
		assert_equal(8, player.move(board))
	end

#        tttboard[0], @tttboard[1], @tttboard[2]],
#      	[@tttboard[0], @tttboard[4], @tttboard[8]],
#      	[@tttboard[0], @tttboard[3], @tttboard[6]],
#      	[@tttboard[3], @tttboard[4], @tttboard[5]],
#      	[@tttboard[6], @tttboard[7], @tttboard[8]],
#      	[@tttboard[6], @tttboard[4], @tttboard[2]],
#      	[@tttboard[1], @tttboard[4], @tttboard[7]],
#      	[@tttboard[2], @tttboard[5], @tttboard[8]]]
 end 


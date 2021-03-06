require 'minitest/autorun'
require_relative "functionpg.rb"

class TestArr < Minitest::Test
	def test_update_board
	  board = ["1","2","3","4","5","6","7","8","9"]
	  player = "x"
	  choice = 2 
	  assert_equal(["1","x","3","4","5","6","7","8","9"],update_board(board,player,choice))
	end
	
	def test_update_board5
	  board = ["1","x","3","4","5","6","7","8","9"]
	  player = "x"
	  choice = 5
	  assert_equal(["1","x","3","4","x","6","7","8","9"],update_board(board,player,choice))
	end
	
	def test_update_board7
	  board = ["1","x","3","4","5","6","7","8","9"]
	  player = "x"
	  choice = 7
	  assert_equal(["1","x","3","4","5","6","x","8","9"],update_board(board,player,choice))
	end
	
	def test_valid_space2
		board = ["1","x","3","4","x","6","7","8","9"]
		choice = 2
		assert_equal(false,valid_space(board,choice))
	end
	
	def test_falsetest
		board = ["1","x","3","4","x","6","7","8","9"]
		choice = 6
		assert_equal(true,valid_space(board,choice))
	end 

	def test_change_players
		player = "x"
		assert_equal("o",change_players(player))
		true
	end 
	def test_winning
		board = ["x","x","x","4","x","6","7","8","9"]
		player ="x"
		assert_equal(true, winning(board,player))
	end
	def test_winningcombo0
		board = ["x","x","x","4","5","6","7","8","9"]
	  player = "x"
	  choice = 2 
	   assert_equal(true, winning(board,player))
	end
	def test_winningcombo1
		board = ["1","2","3","x","x","x","7","8","9"]
	  player = "x"
	  choice = 2 
	   assert_equal(true, winning(board,player))
	end
	def test_winningcombo2
		board = ["1","2","3","4","5","6","x","x","x"]
	  player = "x"
	  choice = 2 
	   assert_equal(true, winning(board,player))
	end
	def test_winningcombo3
		board = ["x","2","3","x","5","6","x","8","9"]
	  player = "x"
	  choice = 2 
	   assert_equal(true, winning(board,player))
	end
	def test_winningcombo4
		board = ["1","x","3","4","x","6","7","x","9"]
	  player = "x"
	  choice = 2 
	   assert_equal(true, winning(board,player))
	end
	def test_winningcombo5
		board = ["1","2","x","4","5","x","7","8","x"]
	  player = "x"
	  choice = 2 
	   assert_equal(true, winning(board,player))
	end
	def test_winningcombo6
		board = ["x","2","3","4","x","6","7","8","x"]
	  player = "x"
	  choice = 2 
	   assert_equal(true, winning(board,player))
	end
	def test_winningcombo7
		board = ["1","2","x","4","x","6","x","8","9"]
	  player = "x"
	  choice = 2 
	   assert_equal(true, winning(board,player))
	end
	def test_fullboard
		board = ["x","o","x","o","x","o","x","x","x"]
	  player = "x"
	  choice = 2 
	   assert_equal(true, fullboard(board))
	end
	def test_fullboard
		board = ["x","2","x","o","x","o","x","x","x"]
	  player = "x"
	  choice = 2 
	   assert_equal(false, fullboard(board))
	end
 end 


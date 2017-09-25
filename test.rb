require 'minitest/autorun'
require_relative "app.rb"

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
	  assert_equal(["1","x","3","4","x","6","x","8","9"],update_board(board,player,choice))
	end
	def test_valid_space
		board = ["1","x","3","4","5","6","7","8","9"]
		choice = 2
		assert_equal(true,valid_space(board, choice))
	end
end 

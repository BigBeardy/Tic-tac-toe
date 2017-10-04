require 'minitest/autorun'
require_relative "board.rb"


class Test_board < Minitest::Test
	def test_board1
		board = Board.new
		assert_equal(["1","2","3","4","5","6","7","8","9"],board.tttboard)
	end

	def test_updateboard
		board = Board.new
		player = "x"
		choice = 1
		board.update(player,choice)
		board.update("o", 3)
		assert_equal(["x","2","o","4","5","6","7","8","9"],board.tttboard)
	end

	def test_movepick
		assert_equal(["1","x","3","4","5","6","7","8","9"])
	end
    
    def test_valid_space
    	board = Board.new
    	player = "x"
    	choice = 2
    	board = ["x","x","o","o","x","o","x","o","x"]
    	assert_equal(true, valid_space(board,choice))





end
require "minitest/autorun"
require_relative "p_class.rb"

	class Test_marker < Minitest::Test

		def test_marker
			player = Playerseq.new("x")
			assert_equal("x",player.player)
	    end

	    # def test_move
	    # 	player = Playerseq.new("x")
	    # 	assert_equal(1,player.move(["1","2","3","4","5","6","7","8","9"]))
	    # end

	    def test_move1
	    	player = Playerseq.new("x")
	    	assert_equal(4,player.move(["x","0","3","4","5","6","7","8","9"]))
	    end
	    def test_move2
	    	player = Playerseq.new("x")
	    	assert_equal(1,player.move(["1","2","3","4","5","6","7","8","9"]))
	    end
	     def test_move3
	    	player = Playerseq.new("o")
	    	assert_equal(3,player.move(["x","o","3","4","5","6","7","8","9"]))
	    end
	    def test_move4
	    	player = Playerseq.new("o")
	    	assert_equal(9,player.move(["x","o","x","o","x","o","x","o","9"]))
	    end







	end
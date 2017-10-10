class Unbeatablefunciton

	def winningcombos(board)
    	[[@tttboard[0], @tttboard[1], @tttboard[2]],
     	[@tttboard[0], @tttboard[4], @tttboard[8]],
     	[@tttboard[0], @tttboard[3], @tttboard[6]],
     	[@tttboard[3], @tttboard[4], @tttboard[5]],
     	[@tttboard[6], @tttboard[7], @tttboard[8]],
     	[@tttboard[6], @tttboard[4], @tttboard[2]],
     	[@tttboard[1], @tttboard[4], @tttboard[7]],
     	[@tttboard[2], @tttboard[5], @tttboard[8]]]
   
	end

	def go_for_win
 		player = Player.new
    board = Board.new
    board.ttt  board = board
    

	def winning(board,player)
	  emp_array =[]
	  winningcombos(@tttboard).each do |combos|
	    if combos[0] == "x" && combos[1] == "x" && combos[2] == "x"
	      emp_array << true
	    elsif combos[0] == "o" && combos[1] == "o" && combos[2] == "o"
	      emp_array << true
	    els    e
	     emp_array << false
	    end
	  end
	  emp_array.include?(true)
	end
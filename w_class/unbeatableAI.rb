class Playerunbeatable
	
	attr_reader :marker

	def initialize(marker)
 		@marker = marker
 	end


 # 	def block_move_go_for_win(tttboard, player)
 # 	winningcombos =  [[@tttboard[0], @tttboard[1], @tttboard[2]],
	# 			     [@tttboard[0], @tttboard[4], @tttboard[8]],
	# 			     [@tttboard[0], @tttboard[3], @tttboard[6]],
	# 			     [@tttboard[3], @tttboard[4], @tttboard[5]],
	# 			     [@tttboard[6], @tttboard[7], @tttboard[8]],
	# 			     [@tttboard[6], @tttboard[4], @tttboard[2]],
	# 			     [@tttboard[1], @tttboard[4], @tttboard[7]],
	# 			     [@tttboard[2], @tttboard[5], @tttboard[8]]]


	# end








		            

	
 def move(board)
		possible_combos = [
		            [0, 1, 2],
		            [3, 4, 5],
		            [6, 7, 8],
		            [0, 3, 6],
		            [1, 4, 7],
		            [2, 5, 8],
		            [0, 4, 8],
		            [2, 4, 6]]
	emptyarray = []
 	move = 100
    	# if board[6] == "7" && board[7] == "x" && board[8]  == "x"
   		# 	move = 7
    	# elsif board[0] == "x" && board[4] == "5" && board[8]  == "x"
    	# 	move = 5
    	# elsif board[1] == "x" && board[4] == "x" && board[7]  == "8"
    	# 	move = 8
   		# else 
    	# 	move = 3
    	# end
	     winningcombos = [
	     [board[0], board[4], board[8]],
	     [board[0], board[3], board[6]],
	     [board[3], board[4], board[5]],
	     [board[0], board[1], board[2]],
	     [board[6], board[7], board[8]],
	     [board[1], board[4], board[7]],
	     [board[2], board[5], board[8]],
	     [board[2], board[4], board[6]]]

	      possible_combos = [
            [0, 4, 8],
            [0, 3, 6],
            [3, 4, 5],
            [0, 1, 2],
            [6, 7, 8],
            [1, 4, 7],
            [2, 5, 8],
            [2, 4, 6]
        ]

   		winningcombos.each_with_index do |val, position|
   		p "#{val}ARRAY"
   			if val.count("x") == 2 && val.count("") == 1
   				p "#{position}WHICH ARRAY"
   				winner = val.index("")
   				
   				p "#{winner} indexofarray"
   				 move = possible_combos[position][winner]
   		 	end
   		end
   		move+1	
	end
end



 
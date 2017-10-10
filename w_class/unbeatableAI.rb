class Playerunbeatable
	
	attr_reader :marker

	def initialize(marker)
 		@marker = marker
 	end


	def move(board)
 	move = 10
    	if board[6] == "7" && board[7] == "x" && board[8]  == "x"
   			move = 7
    	elsif board[0] == "x" && board[4] == "5" && board[8]  == "x"
    		move = 5
    	elsif board[1] == "x" && board[4] == "x" && board[7]  == "8"
    		move = 8
   		else 
    		move = 3
    	end
	     winningcombos = [[board[0], board[1], board[2]],
	     # [@tttboard[0], @tttboard[4], @tttboard[8]],
	     # [@tttboard[0], @tttboard[3], @tttboard[6]],
	     # [@tttboard[3], @tttboard[4], @tttboard[5]],
	     # [@tttboard[6], @tttboard[7], @tttboard[8]],
	     # [@tttboard[6], @tttboard[4], @tttboard[2]],
	     # [@tttboard[1], @tttboard[4], @tttboard[7]],
	     [board[2], board[5], board[8]]]
   	move
   		winningcombos.each_with_index do |val, position|
   		# p val[0] 
   		# p val[1]
   		# p val[2]
   		 
   		 	val.each_with_index do |withinval, index|
   		 	if withinval != "x"

   		 	  end
   		 	# else 
   		 	

   			 end
   		end
   	end

  #  			if val[0] && val[1] == "x"
  #  				 returnedval = val[2] 

  #  			elsif val[0] && val[2] == "x"
  #  				val[1] = returnedval

  #  			elsif val[2] && val[1] == "x"
  #  				val[0] = returnedval
		# 	end
		# 	returnedval
		# end
end


 
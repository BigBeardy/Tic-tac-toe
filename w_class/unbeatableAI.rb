class Playerunbeatable
	
	attr_reader :marker

	def initialize(marker)
 		@marker = marker
 	end
 	
 	def get_opponent(marker)

        if 
            @marker == 'X'
            opponent = 'O'
        
        else
            opponent = 'X'
        end
        opponent
    end

 	def move(board)
 		move = 1000
 	
 		 if win(board) < 10 && win(board) > 0
 		 	move = win(board)
 		 elsif 
 		 	blockmove(board) < 10 && blockmove(board) > 0
 		 	move = blockmove(board)

 	      else 
 		 	move 
 		 end
 		move
 	end
 		

def win(board)
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
   		# p "#{val}ARRAY"
   			if val.count(marker) == 2 && val.count("") == 1
    				# p "#{position}WHICH ARRAY"
    				winner = val.index("")
   				
   				p "#{winner} indexofarray"
   				 move = possible_combos[position][winner]
   				     		 	end
   		end
   		move+1	
	end
	def blockmove(board)
		opponent = "o"

		if marker == "x"
			opponent = "o"
		else marker = "o"
			opponent = "x"
		end
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
      p 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA'
   		winningcombos.each_with_index do |val, position|
   		# p "#{val}ARRAY"
   				if val.count(opponent) == 2 && val.count("") == 1
    				 # sp "#{position}WHICH ARRAY"
    				block = val.index("")
   				
   					 p "#{block} indexofarray"
   					 move = possible_combos[position][block]
   				end
   		end
   		move+1	
	end

	def force_defence(board,player)
					possible_diag_combos_on_board =  [ 
          		[board[0], board[4], board[8]],
          		[board[2], board[4], board[6]]
        											 ]
				possible_diag_combos = diagonals


            move = 10

            possible_diag_combos_on_board.each_with_index do |winning_combo_line, index_position_of_winning_array_set|
            	if winning_combo_line.count(player) == 1 && winning_combo_line.count(opponent) == 2
	                 if 
	                    ttt_board[1] == ''
	                    move = 1

	                elsif 
	                    ttt_board[3] == ''
	                    move = 3

	                elsif 
	                    ttt_board[5] == ''
	                    move = 5
	                
	                elsif 
	                    ttt_board[7] == ''
	                    move = 7

	                else 
	                    move = 10
	                end
	            else
	            	move
            	end
        	end
    	move
    end

     def get_opposite_corner(board, opponent)
        if 
            ttt_board[0] == '' && ttt_board[8] == opponent
            move = 0

        elsif 
            ttt_board[2] == '' && ttt_board[6] == opponent
            move = 2

        elsif 
           ttt_board[6] == '' && ttt_board[2] == opponent
            move = 6

        
        elsif 
            ttt_board[8] == '' && ttt_board[0] == opponent
            move = 8
        else 
            move = 10
        end
        move
    end

end




class Board

  attr_accessor :tttboard
  def initialize 
  	# @tttboard = ["1","2","3","4","5","6","7","8","9"]
    @tttboard = ["","","","","","","","",""]
  	
  end

  def update(player,choice)
  @tttboard[choice-1] = player
    p "#{choice}"
	 @tttboard
end

# def movepick(player,choice)
#     @tttboard = ["1","x","3","4","5","6","7","8","9"]
# end

def full_board()
  if @tttboard.include?(" ")
     # if  @tttboard.include?("1")||@tttboard.include?("2")||
    #     @tttboard.include?("3")||@tttboard.include?("4")||
    #     @tttboard.include?("5")||@tttboard.include?("6")||
    #     @tttboard.include?("7")||@tttboard.include?("8")||
    #     @tttboard.include?("9") 
      false
    else
      true
    end
  end   

def valid_space(board,choice)
	choice = choice-1
	if choice > 8
		false
	elsif choice < 0
		false
	elsif @tttboard[choice] == "x" || @tttboard[choice] == "o"
		false 
	else 
		true
	end
end

# def update(player, choice) 
#         @tttboard[choice-1] = player
        

#         @tttboard
# end

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

def winning(board,player)
  emp_array =[]
  winningcombos(@tttboard).each do |combos|
    if combos[0] == "x" && combos[1] == "x" && combos[2] == "x"
      emp_array << true
    elsif combos[0] == "o" && combos[1] == "o" && combos[2] == "o"
      emp_array << true
    else
     emp_array << false
    end
  end
  emp_array.include?(true)
end
end

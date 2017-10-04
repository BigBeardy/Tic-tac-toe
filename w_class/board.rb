class Board

  attr_reader :tttboard
  def initialize 
  	@tttboard = ["1","2","3","4","5","6","7","8","9"]
  	
  end

  def update_board(marker,choice)
	@tttboard[choice-1] = marker
	# @tttboard
end

def movepick(player,choice)
    @tttboard = ["1","x","3","4","5","6","7","8","9"]
end

def move(player,choice)
    @tttboard = ["1","2","3","4","5","6","7","8","9"]  
    @tttboard[choice - 1] = player

    @tttboard
end  

def makemove(board,player,choice)  
    @tttboard[choice - 1] = player

    @tttboard
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

def update(player, choice) 
        @tttboard[choice-1] = player

        @tttboard
   end
end

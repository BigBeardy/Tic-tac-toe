class Playerrandom
# RANDOM PICKER
 attr_reader :marker

 	def initialize(marker)
 		@marker = marker
 	end

 	def move(board)
 		ind = []
 		board.each_with_index do |val, index|
 		  if val == "x"
          elsif val == "o"

 		  else 
 		  	ind << index+1
 		  end
		end
		move = ind.sample
		p move
		move
	end
end
        
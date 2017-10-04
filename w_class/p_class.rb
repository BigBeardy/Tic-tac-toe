class Playerseq
# RANDOM PICKER
 attr_reader :player

 	def initialize(marker)
 		@player = marker
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
		ind.first
	end
end
        

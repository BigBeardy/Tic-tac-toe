class Playerhuman
	attr_reader :marker
	# humanHI

		def initialize(marker)
			@marker = marker
		end

		def move(board)
			p "player choose your square 1-9"
			choice = gets.chomp.to_i 

		end
end

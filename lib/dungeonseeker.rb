class Engine

	def initialize(startRoom)
		@room = startRoom.new()
	end

	def play()
		next_challenge = @room.get_first_challenge()

		while true
			if next_challenge.kind_of? Class
				@room = next_challenge.new()
				next_challenge = @room.get_first_challenge()
			else
				puts "\n--------"
				challenge = @room.method(next_challenge)
				next_challenge = challenge.call()
			end
		end
	end

	def self.enterRoom(room)
		puts "#{room}"
	end
end

require 'dungeonseeker/rooms'
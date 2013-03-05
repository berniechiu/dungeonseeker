# Some game options and messages in the game.
class GamePlay
	def initialize(dead_messages)
		@dead_messages = dead_messages
	end

	def prompt()
		print "> "
	end

	def death()
		puts @dead_messages[rand(@dead_messages.length())]
		Process.exit(1)
	end

	def victory()
		puts "Congratulations! You survived all the obstacles! You won!"
		Process.exit(0)
	end
end
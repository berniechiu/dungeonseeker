class GoldRoom
	def initialize()
		@dead_messages = [
			"You suck! You're dead now!",
			"You're dead! Sucker!",
			"What a loser! You're completely dead!"
		]

		@gamePlay = GamePlay.new(@dead_messages)
	end

	def get_first_challenge()
		return :gold_statue
	end

	def gold_statue()
		puts "You look at the gold statue."
		puts "It seems weird, and suddenly it comes to life going to kill you."
		puts "What are you going to do next?"
		puts "1. Shoot him!"
		puts "2. Run away!"

		@gamePlay.prompt()
		choice = gets.chomp()

		if choice == "1"
			puts "It couldn't be killed with guns. It tears you to half"
			return @gamePlay.death()

		elsif choice == "2"
			puts "You quickly run into a mysterious tunnel and slide into it."
			return :gold_tunnel

		else
			puts "DOES_NOT_COMPUTE!"
			return :gold_statue
		end
	end

	def gold_tunnel
		puts "You entered a gold_tunnel."
		puts "In front of you, there is plenty of gold."
		puts "What would you do?"
		puts "1. Take the chest."
		puts "2. Take the golden crown."

		@gamePlay.prompt()
		choice = gets.chomp()

		if choice == "1"
			puts "It's too heavy. You can't pick it up. Suddenly a monster pop up and eats you to death."
			return @gamePlay.death()

		elsif choice == "2"
			puts "You take the crown and escape the vicious monster from underneath."
			puts "When you're out. You sell the golden crown and make quite a fortune."
			return @gamePlay.victory()

		else
			puts "DOES_NOT_COMPUTE!"
			return :gold_tunnel
		end 
	end
end

class PandaRoom
	def initialize()
		@dead_messages = [
			"You suck! You're dead now! What the hell!?",
			"You're so dead! Sucker!",
			"What a loser! You're dead like a complete loser!"
		]

		@gamePlay = GamePlay.new(@dead_messages)
	end

	def get_first_challenge()
		return :panda_hallway
	end

	def panda_hallway()
		puts "Welcome to the world of pandas. What are you going to do?"
		puts "1. Keep going."
		puts "2. Stay here."

		@gamePlay.prompt()
		choice = gets.chomp()

		if choice == "1"
			puts "You enter a gold room!"
			return GoldRoom

		elsif choice == "2"
			puts "A giant pandy pops up and kills you..."
			@gamePlay.death()

		else
			puts "DOES NOT COMPUTE!"
			return :panda_hallway
		end
	end
end

require 'dungeonseeker/game_play'
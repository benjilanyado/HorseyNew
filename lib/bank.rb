require "lib/field"

class Bank

	attr_accessor :new_stake
	attr_accessor :total


	def initialize(stake, total, horse_choice)

		@total = total
		@stake = stake.to_i
		@new_stake = new_stake
		@horse_choice = horse_choice


	end	


	


	def loser
		
		@new_stake = @total - @stake

		puts "You have #{@new_stake} remaining becuase #{@horse_choice} lost!"

		if @new_stake == 0

			puts "Game over, punk!"

		elsif 
			@new_stake = @total

		end	
			

	end	

	def winner 

		@new_stake = @total + Field.new(@stake, @total, @horse_choice).horses[@horse_choice.to_i - 1][:odds]

		puts "You have #{@new_stake} remaining you RICH FUCKER becuase you won on #{@horse_choice}"

		@new_stake = @total



	end	














end
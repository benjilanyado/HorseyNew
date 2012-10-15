require "lib/bank"
require "lib/race"

class Field


	attr_accessor :horses
	attr_accessor :index
	attr_accessor :name
	attr_accessor :odds
	attr_accessor :total_odds
	attr_accessor :pretend_field
	attr_accessor :horses_entered
	attr_accessor :winner


	include Enumerable

	

		def initialize()
			@horses = [

				{name: "Novelty Bobble", odds: 3.00},
				{name: "Immaculate Pasta", odds: 20.00},
				{name: "Christ's Chin", odds: 7.00},
				{name: "Ever the Horse", odds: 5.00},
				{name: "Alf Ramsay's Porn Dungeon", odds: 3.00},
				{name: "Sinead O'Conner", odds: 25.00},
				{name: "Smalltown Gypsy Massacre", odds: 33.00},
				{name: "Epileptic Fridge Boy", odds: 10.00},
				{name: "Astonishing Bomb Queen", odds: 15.00}

			]

			total_odds
		end


		def display_field


			@horses.each_with_index do |horses, index|

			index = index + 1		

			puts "#{index}: #{horses[:name]} at odds of #{horses[:odds]}"

			end
		end

		def total_odds

				@total_odds = @horses.collect {|h| h[:odds] }.inject(:+)

				pretend_field_maker
			
		end

		def pretend_field_maker

			@pretend_field = Array.new

			@horses.each_with_index do |horses, index|

			@times_entered = @total_odds / @horses[index][:odds]

			@times_entered.round.times do 

				 @pretend_field << @horses[index][:name]

				end

			end

			@pretend_field = @pretend_field.shuffle!

			@winner = @pretend_field.pop

		end



		def did_they_win?(choice)
			if horses[choice][:name] == @winner
				true
			else
				false
			end
		end	

		def total_won(bet_size, choice)
			bet_size.to_i * @horses[choice][:odds]
		end

		def total_loss(bet_size, choice)
			bet_size.to_i
		end
end



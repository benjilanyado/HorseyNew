require "lib/field"
require "lib/bank"

class Race

	attr_accessor :horse_choice
	attr_accessor :bet_size
	attr_accessor :field

	def initialize()

<<<<<<< HEAD
		@total = 100

		show_options

	end	
	
	def show_options				

		puts "HERE ARE YOUR HORSES & ODDS... PICK ONE"

		# set a new random winner
		@field = Field.new()
		@field.display_field #initializing field and then executing disply_field

		input = $stdin.gets.chomp

		if input.to_i >=1 && input.to_i <=9

			@horse_choice = input.to_i - 1

			#@field.horses[horse_choice.to_i - 1][:name]

			puts "you have chosen #{picked_horse}, great choice!"

			make_bet

		else  
					
			puts "Sorry, that's not a valid entry. What kind of moron enters #{horse_choice} when clearly asked to pick from 1-9? Sheesh. Try again."

			show_options

		end

	end

	def make_bet

		puts "Now choose how much money to stake, you have #{@total} to play with"
		@bet_size = $stdin.gets.chomp	

		if @bet_size.to_i > @total.to_i
			puts "Sorry can't bet that much... try again\n\n"

			make_bet
		else	
			make_race_happen	    #as defined below
		end	
	end

	def picked_horse
		@field.horses[@horse_choice][:name]
	end

	def make_race_happen

		puts "The race has happened, you backed #{picked_horse} for #{@bet_size}"    #as you have defined these instance variables abvove

		winner = @field.winner  #this pulls the variable from Field.new etc...
		
		puts "The winner was #{winner}"

		if @field.did_they_win?(@horse_choice)
			# @total = @total + that
			puts "You win!"
			@total += @field.total_won(@bet_size, @horse_choice)
		else
			# -= decreases total by
			puts "You lose!"
			@total -= @field.total_loss(@bet_size, @horse_choice)
		end
=======
	@horse_choice = horse_choice
	@bet_size = bet_size
  @field = Field.new  #initializing field and then executing disply_field

	puts "HERE ARE YOUR HORSES & ODDS... PICK ONE"
	horse_choice = $stdin.gets.chomp

	if @field.horses.has_key?(horse_choice)
	  puts "HOW MUCH YOU WANNA PAY?"
    bet_size = $stdin.gets.chomp	
    make_race_happen	    #as defined below
  else 
		puts "WRONG"
  end
>>>>>>> bbe164b7a71a241e29a09b88214d74160bd15be4

		puts "You have now #{@total} credits"
				

				puts "\n(Q)uit or (C)ontinue?"
				choice = $stdin.gets.chomp	

<<<<<<< HEAD
					if choice.upcase == "C"

						@pot = @pot.to_i - @bet_size.to_i
						show_options
=======
	def make_race_happen
		puts "#{@horse_choice} lost you fool, there goes #{@bet_size}"    #as you have defined these instance variables abvove
	end
>>>>>>> bbe164b7a71a241e29a09b88214d74160bd15be4


					elsif
						puts "bye!"	

					end


	end	

				
				


end

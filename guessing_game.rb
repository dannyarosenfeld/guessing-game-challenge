class GuessingGame
 attr_reader :remaining_guesses
 attr_accessor :congrats_message, :has_won, :has_lost

 def initialize(secretnum, remaining_guesses)
   @secretnum = secretnum
   @congrats_message = "Yay, you won!"
   @remaining_guesses = remaining_guesses
   @guess_history = []
   @has_won = false
   @has_lost = false
 end

def has_won?
   @has_won
 end

 def has_lost?
   @has_lost
 end

def determine_game_state(num)
  if num == @secretnum
    @has_won = true
    @has_lost = false
  elsif num != @secretnum && @remaining_guesses == 0
    @has_won = false
    @has_lost = true
  end
end


 def guess(num)


  determine_game_state(num)
  output = ""
  if !@guess_history.include?(num)
   @remaining_guesses -= 1
  end
  @guess_history << num

  if num < @secretnum
    output << "Too low!"
  elsif num == @secretnum
   if num == 8
    output << "Correct! The number was #{@secretnum}"

   elsif num == 100
    output << "Yay, you won! The number was #{@secretnum}"
   end
  else
    output << "Too high!"
  end

 if @remaining_guesses == 1 && num != @secretnum
  output += " WARNING: Only one guess left!"
 end

  if @remaining_guesses == 0 && num != @secretnum
    @has_lost = true
    output = "You lost! The number was #{@secretnum}"
  end

    if has_lost?

    end

output

end


def return_output


end
















end

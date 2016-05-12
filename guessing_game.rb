class GuessingGame
 attr_reader :remaining_guesses, :has_won, :has_lost
 attr_accessor :congrats_message

 def initialize(secretnum, remaining_guesses)
   @secretnum = secretnum
   @congrats_message = "Yay, you won!"
   @remaining_guesses = remaining_guesses
   @guess_history = []
 end

 def has_won?
   false
 end

 def has_lost?
   false
 end

 def guess(num)
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
    output = "You lost! The number was #{@secretnum}"
  end


output

end



end

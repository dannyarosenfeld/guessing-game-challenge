class GuessingGame
 attr_reader :remaining_guesses, :has_won, :has_lost
 attr_accessor :congrats_message

 def initialize(secretnum, remaining_guesses)
   @secretnum = secretnum
   @congrats_message = "Yay, you won!"
   @remaining_guesses = remaining_guesses
 end

 def has_won?
   false
 end

 def has_lost?
   false
 end

 def guess(num)
   repeated_guesses = []
   @remaining_guesses -= 1
   if @remaining_guesses == 2
   if num == 2
     "Too low!"
   end
   if num == 8
     "Correct! The number was 8"
   end
 end



end

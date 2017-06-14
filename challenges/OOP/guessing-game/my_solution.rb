class GuessingGame
    def initialize(answer)
        @answer = answer
        @solved = false
        @guess = nil
    end

    #Setter
    def guess(guess)
        @guess = guess
        if guess > @answer
            :high
        elsif guess == @answer
            :correct
        else
            :low
        end
    end

    def solved?()
        if @guess == @answer
           @solved = true
        else
           @solved = false
        end
    end
end

game = GuessingGame.new(10)
#game.guess(10)
#game.solved?
#puts game.guess(20)
#puts game.guess(10)

class GuessingGame
    def initialize(answer)
        @answer = answer
    end

    #Setter
    def guess(guess)
        if guess > @answer
            :high
        elsif guess == @answer
            :correct
        else
            :low
        end
    end

    def solved?()
        if guess == @answer
            true
        else
            false
        end
    end
end

game = GuessingGame.new(10)
# game.solved?
puts game.guess(5)
puts game.guess(20)
puts game.guess(10)

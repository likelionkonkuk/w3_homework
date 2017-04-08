class GameController < ApplicationController
    
    def game
        
        dice=[1,2,3,4,5,6]
        @dice1 = rand(0..5)
        @dice2 = rand(0..5)
        @dice_img1 = 'dice'+dice[@dice1].to_s
        @dice_img2 = 'dice'+dice[@dice2].to_s
        
        if @dice1 > @dice2
            @right='win'
            @left='lose'

        elsif @dice1 < @dice2
            @left='win'
            @right='lose'

        else
            return
        end
    end
    
    
end

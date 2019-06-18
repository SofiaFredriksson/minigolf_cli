class Player < ActiveRecord::Base
    has_many :games
    has_many :holes, through: :games
    
    # def create_game 
    #     Game.create(score: total_score)
    # end

  
end
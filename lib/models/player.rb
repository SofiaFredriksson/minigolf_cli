class Player < ActiveRecord::Base
    has_many :games
    has_many :holes, through: :games
    
    def create_game 
        Game.create(score: total_score)
    end

    def create_hole

        Hole.create(player: self, game_id: 2, par: 2, stroke: rand(1..10))
    end
    
end
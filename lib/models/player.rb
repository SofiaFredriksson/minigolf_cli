class Player < ActiveRecord::Base
    has_many :games
    has_many :courses, through: :games

    def total_strokes
        self.games.first.holes.map{|hole| hole.stroke}.sum
    end 
    
    def score(id)
        game = Game.find{|game| game.id == id}
        total = self.strokes - game.total_par
        total
    end 

    def all_scores
        self.games.map{|game| self.score(game.id)}
    end
end
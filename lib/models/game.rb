class Game < ActiveRecord::Base
    belongs_to :player
    has_many :game_holes 
    has_many :holes, through: :game_holes

    def total_par
        self.holes.map{|hole| hole.par}.sum
    end 

    
end 
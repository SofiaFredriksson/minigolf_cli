class Game < ActiveRecord::Base
    has_many :holes
    belongs_to :player

    def total_par
        self.holes.map{|hole| hole.par}.sum
    end 

    def total_score
        self.holes.map{|hole| hole.stroke}.sum
    end
end 
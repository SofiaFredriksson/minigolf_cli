class Game < ActiveRecord::Base
    has_many :holes
    belongs_to :player

    def total_par
        self.holes.map{|hole| hole.par}.sum
    end 

    def total_score
        self.holes.map{|hole| hole.stroke}.sum
    end

    def final_score
        score = self.total_score - 18
        score
    end

    def update_score
        if !self || self.holes.count < 9
            puts "Hold your horses! You need to complete a game first!"
        else 
            self.update(score: self.final_score)
            if self.score > 0
                puts "#{self.score} over par"
            else
                puts "#{self.score * (-1)} under par"
            end
            
        end 
    end
end 
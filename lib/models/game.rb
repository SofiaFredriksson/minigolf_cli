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
            self.update(score: self.final_score)
            if self.score > 0
                puts "#{self.score} over par"
                s_b 
                puts "Press 4 to view all your scores, or enter to go back to the main menu."
            else
                puts "#{self.score * (-1)} under par"
                s_b
                puts "Press 4 to view all your scores, or enter to go back to the main menu."
            end
    end
end 
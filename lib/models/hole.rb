class Hole < ActiveRecord::Base
    belongs_to :game
    belongs_to :player 

   def set_score
    self.stroke(random_score)
   end

   def random_score
    rand(1..10)
   end
end 
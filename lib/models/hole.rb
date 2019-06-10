class Hole < ActiveRecord::Base
    has_many :game_holes
    has_many :games, through: :game_holes 

end 
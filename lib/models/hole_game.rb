class GameHole < ActiveRecord::Base
    belongs_to :hole 
    belongs_to :game 
end 
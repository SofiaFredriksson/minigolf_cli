class Player < ActiveRecord::Base
    has_many :games
    has_many :courses, through: :games


end
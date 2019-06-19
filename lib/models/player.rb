class Player < ActiveRecord::Base
    has_many :games
    has_many :holes, through: :games
    
    # def create_game 
    #     Game.create(score: total_score)
    # end

    def all_games
        self.games.each_with_index.map{|game, index| "Game: #{index+1} |||| Score: #{game.score}" }.join()
    end
end
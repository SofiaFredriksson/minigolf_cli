class Player < ActiveRecord::Base
    has_many :games
    has_many :holes, through: :games

    def all_games
        reload()
      self.games.each_with_index.map do |game, index| 
        if game.score > 0
            puts "Game: #{index+1} |||| Score: #{game.score} over par"
        else
            puts "Game: #{index+1} |||| Score: #{game.score * -1} under par"
        end 
    end 
    end

    def new_game
        Game.create(score: 0, player: self)
    end

    def create_hole(game)
        if game 
            Hole.create(player: self, game: game, par: 2, stroke: rand(1..10))
            puts "#{self.holes.last.stroke}"
        else 
            puts "Press 1 to start a new game!"
        end 
    end

end
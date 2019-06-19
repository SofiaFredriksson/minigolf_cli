def menu
    msg = <<-MENU
    Welcome to FiaGolf, the worlds worst virtual MiniGold game. 
    Type in a command from the list, and have a nice round!

    1. Start a new game!

    2. Check your score!

    3. Hit a stroke! Will it be a par? Triple Bogey? Nobody knows!

    4. exit - Are you sick of this yet? It's totally ok to leave 

    

    MENU
    puts msg
end 

def menu_2
    msg = <<-MENU
    Welcome to FiaGolf, the worlds worst virtual MiniGold game. 
    Type in a command from the list, and have a nice round!

    1. putt - Hit a stroke! Will it be a par? Triple Bogey? Nobody knows!

    MENU
    puts msg
end

def s_b
    2.times do
        puts "-----"
    end 
end

def find_user
    puts "Enter username:"
    username = gets.chomp
    if Player.find_by(name: username)
        Player.find_by(name: username)
        puts 'user found'
    else
        Player.create(name: username)
    end 
end 

def new_game(user)
    Game.create(score: 0, player: user)
end

def create_hole(user, game)
    if game 
        Hole.create(player: user, game: game, par: 2, stroke: rand(1..10))
        puts "#{user.holes.last.stroke}"
    else 
        puts "Press 1 to start a new game!"
    end 
end






    ###################
    ###### MENUS ######
    ###################


def main_menu(user)
    input = ""
    

    while input
        menu
    input = gets.downcase.strip
    case input 
    when '1'
        s_b
        counter = 0
        game = new_game(user)
        puts "Game started, putt 9 times!"
        s_b
    when '2'
        s_b
        game.update(score: game.total_score)
        puts "#{game.score}"
        s_b
    when '4'
        s_b
        puts 'See ya later' 
        s_b
        break
    when '3'
        s_b
        if counter < 9
        create_hole(user, game)
        counter += 1
        else
            puts "That's enough! Check your score!"
        end 
        s_b
    else
        s_b
        menu
        s_b
    end
end 
end 
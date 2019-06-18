def menu
    msg = <<-MENU
    Welcome to Shittygolf, the worlds worst virtual MiniGold game. 
    Type in a command from the list, and have a nice round!

    1. Start a new game!

    2. games - Check on how you've done in previous games 

    3. exit - Are you sick of this yet? It's totally ok to leave 

    4. putt - Hit a stroke! Will it be a par? Triple Bogey? Nobody knows!

    MENU
    puts msg
end 

def menu_2
    msg = <<-MENU
    Welcome to Shittygolf, the worlds worst virtual MiniGold game. 
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
    Hole.create(player: user, game: game, par: 2, stroke: rand(1..10))
end



    ###################
    ###### MENUS ######
    ###################


def run(user)
    input = ""

    while input
        menu
    input = gets.downcase.strip
    case input 
    when '1'
        s_b
        game = new_game(user)
        puts "Game started, putt 9 times!"
        s_b
    when '2'
        s_b
        puts "#{game.total_score}"
        s_b
    when '3'
        s_b
        puts 'See ya later' 
        s_b
        break
    when '4'
        s_b
        create_hole(user, game)
        puts "#{user.holes.last.stroke}"
        s_b
    else
        s_b
        menu
        s_b
    end
end 
end 
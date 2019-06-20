def menu
    msg = <<-MENU
    Welcome to FiaGolf, the worlds worst virtual MiniGold game. 
    Type in a command from the list, and have a nice round!

    1. Start a new game!

    2. Check your score!

    3. Hit a stroke! Will it be a par? Triple Bogey? Nobody knows!

    4. Check out your past scores! 

    5. exit - Are you sick of this yet? It's totally ok to leave 

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
    else
        Player.create(name: username)
    end 
end 

    ###################
    ###### MENUS ######
    ###################

def main_menu(user)
    input = ""
    
    while input
        input = gets.downcase.strip
        case input 
        when '1'
            s_b
            counter = 0
            game = user.new_game
            puts "Game started! You have 9 holes to get through. Press 3 to putt!"
            s_b
        when '2'
            if !game || game.holes.count < 9
                s_b
                puts "Hold your horses! You need to complete a game first!"
                s_b
            else 
            s_b
            game.update_score
            s_b
            end
        when '5'
            s_b
            puts 'See ya later' 
            s_b
            break
        when '3'
            s_b
            if counter < 9
            user.create_hole(game)
            counter += 1
            else
                puts "That's enough! Press 2 to check your score!"
            end 
            s_b
        when '4'
            s_b
            user.all_games
            s_b
        else
            s_b
            menu
            s_b
        end
    end 
end 
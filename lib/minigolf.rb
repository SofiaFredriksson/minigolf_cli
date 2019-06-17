def menu
    msg = <<-MENU
    Welcome to Shittygolf, the worlds worst virtual MiniGold game. 
    Type in a command from the list, and have a nice round!

    putt - Hit a stroke! Will it be a par? Triple Bogey? Nobody knows!

    games - Check on how you've done in previous games 

    exit - Are you sick of this yet? It's totally ok to leave 

    MENU
    puts msg
end 

def s_b
    2.times do
        puts "-----"
    end 
end

def run
    input = ""

    while input
        menu
    input = gets.downcase.strip
    case input 
    when 'putt'
        s_b
        puts 'Aw yeah, nice one'
        s_b
    when 'games'
        puts 'Wow! Much games!'
    when 'menu'
        menu
    when 'exit'
        puts 'See ya later' 
        break
    else
        menu
    end
end 
end 
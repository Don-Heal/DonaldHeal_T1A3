require_relative "./methods.rb"
require_relative "./multi_play.rb"
require_relative "./menu_methods.rb"
require_relative "./game.rb"


if ARGV.length > 0 
    flag, *rest = ARGV 
    ARGV.clear
    case flag
    when '-help'
        puts "Please look at readme document for help"
        exit
    when '-info'
        puts "Game: Battleships, Players: Singleplayer, Author: Don Heal"
        exit
    when '-install'
        puts "Run the 'install' script to install and run the application. "
        exit
    else 
     puts "Please enter -help, -info, -install"
     exit 
    end
end  

puts title


loop do
  case gamemode
    when gamemode = 1
      # Starts the game
      puts game

    when gamemode = 2
      # start multiplayergame
      puts multi_game

    when gamemode =3
      # goes to history file
      system("cls") || system("clear")
      puts title
      puts file_data = File.read("./data/user_list.txt").chomp
      
    else
      exit
  end
end
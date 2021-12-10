require "tty-prompt"
require "colorize"
require "artii"

def title
  a = Artii::Base.new
  a.asciify("Battleships")
  puts a.asciify("B A T T L E S H I P S")
end

def gamemode
  choice = { Singleplayer: 1, Multiplayer: 2 }
  prompt = TTY::Prompt.new
  prompt.select("which mode would you like to play?", choice)
end

def add_player
    
end

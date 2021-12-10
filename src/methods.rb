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

def players_turn
  choice = { Checkboard: 1, Shoot: 2, Surrender: 3 }
  prompt = TTY::Prompt.new
  prompt.select("What would you like to do?", choice)
end

def grid
  puts "---------------"

  a = ["+" " " "+" " " "+" " " "+" " " "+" " " "+" " " "+" " " "+"]
  b = ["+" " " "+" " " "+" " " "+" " " "+" " " "+" " " "+" " " "+"]
  c = ["+" " " "+" " " "+" " " "+" " " "+" " " "+" " " "+" " " "+"]
  d = ["+" " " "+" " " "+" " " "+" " " "+" " " "+" " " "+" " " "+"]
  e = ["+" " " "+" " " "+" " " "+" " " "+" " " "+" " " "+" " " "+"]
  f = ["+" " " "+" " " "+" " " "+" " " "+" " " "+" " " "+" " " "+"]
  g = ["+" " " "+" " " "+" " " "+" " " "+" " " "+" " " "+" " " "+"]
  h = ["+" " " "+" " " "+" " " "+" " " "+" " " "+" " " "+" " " "+"]
  puts a
  puts b
  puts c
  puts d
  puts e
  puts f
  puts g
  puts h
  puts "---------------"
end

def players_grid
    puts grid
end

def enemy_grid
end

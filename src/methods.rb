require "tty-prompt"
require "colorize"
require "artii"

# Displayes title screen
def title
  a = Artii::Base.new
  a.asciify("Battleships")
  puts a.asciify("B A T T L E S H I P S")
end

# selects gamemode when prompted
def gamemode
  choice = { Singleplayer: 1, Multiplayer: 2 }
  prompt = TTY::Prompt.new
  prompt.select("which mode would you like to play?", choice)
end

# sets Computers shot to random or seeking once hit
def difficulty
  choice = { Easy: 1, Hard: 2 }
  prompt = TTY::Prompt.new
  prompt.select("What skill level would you like to play?", choice)
end

# Shows game menu options
def game_menu
  choice = { Play: 1, Exit: 2 }
  prompt = TTY::Prompt.new
  prompt.select("What would you like to do?", choice)
end

# player options
def players_turn
  choice = { Checkboard: 1, Attack: 2, Surrender: 3 }
  prompt = TTY::Prompt.new
  prompt.select("What would you like to do?", choice)
end

# creats the grid for the game
def grid

  @x = ["A", "B", "C", "D", "E", "F", "G", "H"]
  @y = [1, 2, 3, 4, 5, 6, 7, 8]
  @xy = @x.product(@y)
  @board = @xy.map! { |xy| xy.join("") }
  puts @board[0..7].join(" ").colorize(:color => :white, :background => :blue)
  puts @board[8..15].join(" ").colorize(:color => :white, :background => :blue)
  puts @board[16..23].join(" ").colorize(:color => :white, :background => :blue)
  puts @board[24..31].join(" ").colorize(:color => :white, :background => :blue)
  puts @board[32..39].join(" ").colorize(:color => :white, :background => :blue)
  puts @board[40..47].join(" ").colorize(:color => :white, :background => :blue)
  puts @board[48..55].join(" ").colorize(:color => :white, :background => :blue)
  puts @board[56..63].join(" ").colorize(:color => :white, :background => :blue)
end

# gives the ships a random grid reference
def ships
  ships_array = []

  ships_array << ["A1", "B1", "C1", "D1"]
  ships_array << ["H8", "G8", "F8", "E8"]
  ships_array << ["C3", "C4", "C5", "C6"]
  ships_array << ["A2", "A3", "A4"]
  ships_array << ["B4", "B5", "B6"]
  ships_array << ["H4", "H5", "H6"]
  ships_array << ["G1", "G2", "G3"]
  ships_array << ["A5", "A6", "A7"]
  ships_array << ["G4", "G5"]
  ships_array << ["B8", "C8"]
  ships_array << ["C7", "D7"]
  ships_array << ["F1", "F2"]

  ship_1 = ships_array.sample(1)
  ship_2 = ships_array.sample(1)
  ship_3 = ships_array.sample(1)

if (ship_1 && ship_2) == ship_3
    ship_1.replace(ships_array.sample(1))
    ship_2.replace(ships_array.sample(1))
  end
if ship_2 == ship_1
    ship_2.replace(ships_array.sample(1))
end


  return [ship_1, ship_2, ship_3]
end

def sunk
  a = Artii::Base.new
  a.asciify("sunk")
  puts a.asciify("YOU SUNK MY" "\n" "BATTLESHIP").colorize(:green)
end

def win
  a = Artii::Base.new
  a.asciify("win")
  puts a.asciify("YOU WON" "\n" "THE GAME!!!!").colorize(:green)
end

def gameover
  a = Artii::Base.new
  a.asciify("Gameover")
  puts a.asciify("Gameover").colorize(:red)
end
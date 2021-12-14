require "tty-prompt"
require "colorize"
require "artii"

# displayes title screen
def title
  a = Artii::Base.new
  a.asciify("Battleships")
  puts a.asciify("B A T T L E S H I P S").colorize(:green)
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

# multiplayer menu
def multi_menu
  choice = { Player1: 1, player: 2 }
  prompt = TTY::Prompt.new
  prompt.select("Would you like to continue?", choice)
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

# gives the ship carriers a random grid reference
def ship_carrier
  ship_carrier = []

  ship_carrier << ["A1", "B1", "C1", "D1"]
  ship_carrier << ["H8", "G8", "F8", "E8"]
  ship_carrier << ["C3", "C4", "C5", "C6"]

  ship_1 = ship_carrier.sample(1)

  return [ship_1]
end
# gives the ship destroyer a random grid reference
def ship_destroyer
  ship_destroyer = []

  ship_destroyer << ["A2", "A3", "A4"]
  ship_destroyer << ["B4", "B5", "B6"]
  ship_destroyer << ["H4", "H5", "H6"]
  ship_destroyer << ["G1", "G2", "G3"]
  ship_destroyer << ["A5", "A6", "A7"]

  ship_2 = ship_destroyer.sample(1)

  return [ship_2]
end
# gives the ship patrol a random grid reference
def ship_patrol
  ship_patrol = []

  ship_patrol << ["G4", "G5"]
  ship_patrol << ["B8", "C8"]
  ship_patrol << ["C7", "D7"]
  ship_patrol << ["F1", "F2"]

  ship_3 = ship_patrol.sample(1)

  return [ship_3]
end
# method for sinking a ship
def sunk
  a = Artii::Base.new
  a.asciify("sunk")
  puts a.asciify("YOU SUNK MY" "\n" "BATTLESHIP").colorize(:green)
end
# method for winning the game
def win
  a = Artii::Base.new
  a.asciify("win")
  puts a.asciify("YOU WON" "\n" "THE GAME!!!!").colorize(:green)
  exit
end
# method for losing the game
def gameover
  a = Artii::Base.new
  a.asciify("Gameover")
  puts a.asciify("Gameover").colorize(:red)
  puts a.asciify("Thanks for playing")
  exit
end


require "tty-prompt"

# selects gamemode when prompted
def gamemode
  choice = { Play: 1, Multiplayer: 2, History: 3, Exit: 4 }
  prompt = TTY::Prompt.new
  prompt.select("which mode would you like to play?", choice)
end

# sets Computers shot to random or seeking once hit
def difficulty
  choice = { Easy: 1, Hard: 2 }
  prompt = TTY::Prompt.new
  prompt.select("What skill level would you like to play?", choice)
end

# sets Computers shot to random or seeking once hit
def players_turn
  choice = { "#{@name1}": 1, "#{@name2}": 2 }
  prompt = TTY::Prompt.new
  prompt.select("who's turn is it?", choice)
end
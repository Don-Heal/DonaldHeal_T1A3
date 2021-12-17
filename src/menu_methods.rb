require "tty-prompt"

# selects gamemode when prompted
def gamemode
  choice = { Play: 1, History: 2, Exit: 3 }
  prompt = TTY::Prompt.new
  prompt.select("which mode would you like to play?", choice)
end

# sets Computers shot to random or seeking once hit
def difficulty
  choice = { Easy: 1, Hard: 2 }
  prompt = TTY::Prompt.new
  prompt.select("What skill level would you like to play?", choice)
end

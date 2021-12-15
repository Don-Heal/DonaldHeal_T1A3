require_relative "./methods.rb"
require_relative "./game.rb"
require "colorize"
system "clear"
puts title
loop do
case gamemode
when gamemode = 1
# Starts the game
puts game

when gamemode =2
  # goes to history file
 puts file_data = File.read("./data/user_list.txt").chomp
else
  exit
end
end
require_relative "./methods.rb"
require_relative "./game.rb"
require "colorize"
require "json"

puts title

if gamemode == 1
# Users name input
  puts "Please enter name".colorize(:color => :yellow, :background => :grey)
  name = gets.chomp
system "clear"

# Greeting
  puts title
  puts "Welcome #{name}".colorize(:color => :yellow, :background => :grey)

# Starts the game
puts game

elsif gamemode ==2
  # goes to history file
  file = File.read('./data/user_list.json')
else
  exit
end
require_relative "./methods.rb"
require_relative "./multiplayer.rb"
require_relative "./game.rb"
require "colorize"

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
end
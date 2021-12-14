require_relative "./methods.rb"
require_relative "./game.rb"
require "colorize"

puts title

# Users name input
puts "Please enter name".colorize(:color => :yellow, :background => :grey)
name = gets.chomp


system "clear"

puts title
puts "Welcome #{name}".colorize(:color => :yellow, :background => :grey)

if gamemode == 1
  puts game
else

end


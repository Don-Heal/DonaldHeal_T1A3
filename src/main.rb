require_relative "./methods.rb"
require_relative "./classes/ships.rb"
require_relative "./classes/grid.rb"

puts title

if gamemode == 1
  puts "Please enter Username".colorize(:blue)
  player = gets.chomp.to_s
else
  puts "Please enter player 1's Username name".colorize(:blue)
  player1 = gets.chomp.to_s
  puts "Please enter player 2's Username name".colorize(:red)
  player2 = gets.chomp.to_s
end
system "clear"

puts title

require_relative "./methods.rb"
require_relative "./classes/ships.rb"
require_relative "./classes/grid.rb"

puts title

if gamemode == 1                                                 # find out if they want to play againt the computer or another player
  puts "Please enter Username".colorize(:blue)
  input1 = gets.chomp.to_s
  player1 = input1

else                                                             # get both players name
  puts "Please enter player 1's Username name".colorize(:blue)
  input1 = gets.chomp.to_s
  player1 = input1
  puts "Please enter player 2's Username name".colorize(:red)
  input2 = gets.chomp.to_s
  player2 = input2
end

system "clear"
                                                                # Start the game with player 1
puts title
puts "It's #{player1} turn".colorize(:blue)
if players_turn == 1
    puts players_grid
elsif players_turn == 2
    # calls shoot method
else
    # are you sure you would like to exit?


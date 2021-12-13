require_relative "./methods.rb"
require "colorize"

puts title

# Users name input
puts "please enter name"
name = gets.chomp


system "clear"

puts title
puts "Welcome #{name}"
# chose difficulty
if difficulty == 1
  system "clear"
  counter = 50
  ship1 = ships[0]
  ship1_hit = []
  tried = []

loop do
  grid
  puts"Enter a grid location to fire!"
 
  puts ship1
  turn = gets.chomp.upcase

  if tried.include?(turn)
  puts "Tried that space already try again"
  end
  if ship1.include?(turn)
    puts"HIT"
    ship1_hit<<turn
    if ship_hit.count == ship1.count
      puts sunk
    end
  else 
    puts"Nothing try again!"
  end
  tried<<turn
  


   
end


end

#give players a grid

# user goes first
#computer goes first

# first to sink ships wins
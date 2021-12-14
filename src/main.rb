require_relative "./methods.rb"
require "colorize"

puts title

# Users name input
puts "Please enter name".colorize(:color => :yellow, :background => :grey)
name = gets.chomp


system "clear"

puts title
puts "Welcome #{name}".colorize(:color => :yellow, :background => :grey)

# Difficulty setting
if difficulty == 1
  system "clear"
  counter = 10
  tried = []
  ship1 = ship_carrier[0]
  ship2 = ship_destroyer[0]
  ship3 = ship_patrol[0]
  ship1_hit = []
  ship2_hit = []
  ship3_hit = []
#Game loop begins
loop do 
    counter -=1
# place grid for game
  puts grid
  if counter == 0
    puts gameover
    puts"Thanks for playing"
    exit
  end
  puts "time until Gameover #{counter}"
  puts "Hits on ship 1's location: #{ship1_hit.sort}".colorize(:color => :yellow, :background => :grey)
  puts "Hits on ship 2's location: #{ship2_hit.sort}".colorize(:color => :yellow, :background => :grey)
  puts "Hits on ship 3's location: #{ship3_hit.sort}".colorize(:color => :yellow, :background => :grey)
  puts"Enter a grid location to fire!".colorize(:color => :yellow, :background => :grey)
# puts "Turn's until enemys escape #{counter}"
  turn = gets.chomp.upcase

# type in location to fire at
  if tried.include?(turn)
    system "clear"
    puts "Tried that space already try again".colorize(:color => :black, :background => :red)

# first ship on the board if hit loop to top or keep going
  elsif ship1.any? { |a| a.include?(turn) }
    system "clear"
    puts"HIT".colorize(:green)
    ship1_hit<<turn
    tried<<turn
      if ship1_hit.count == ship1.flatten.count
        puts sunk
          if ship1_hit.count == ship1.flatten.count && ship2_hit.count == ship2.flatten.count && ship3_hit.count == ship3.flatten.count
            puts win
            break
          else
            puts "Keep hunting!!!!!"
          end
      end

# Second ship on the board if hit loop to top or keep going
  elsif ship2.any? { |a| a.include?(turn) }
    system "clear"
    puts"HIT".colorize(:green)
    ship2_hit<<turn
    tried<<turn
      if ship2_hit.count == ship2.flatten.count
        puts sunk
          if ship1_hit.count == ship1.flatten.count && ship2_hit.count == ship2.flatten.count && ship3_hit.count == ship3.flatten.count
            puts win
            break
          else
            puts "Keep hunting!!!!!"
          end
      end

# third ship on the board if hit loop to top or keep going
  elsif ship3.any? { |a| a.include?(turn) }
    system "clear"
    puts"HIT".colorize(:green)
    ship3_hit<<turn
    tried<<turn
      if ship3_hit.count == ship3.flatten.count
        puts sunk
          if ship1_hit.count == ship1.flatten.count && ship2_hit.count == ship2.flatten.count && ship3_hit.count == ship3.flatten.count
            puts win
            break
          else
            puts "Keep hunting!!!!!"
          end
      end

      # missed all ships option
      elsif
        unless ship1.flatten && ship2.flatten && ship3.flatten.include?(turn)
          system "clear"
          tried<<turn
          puts "You have missed try again careful not to fire blanks off the map"
        end
      end
  end
end

require_relative "./methods.rb"
require "colorize"
require "json"


def game
   tried = []
   ship1 = ship_carrier[0]
   ship2 = ship_destroyer[0]
   ship3 = ship_patrol[0]
   ship1_hit = []
   ship2_hit = []
   ship3_hit = []
   if difficulty ==1
    counter = 50
   else
    counter = 20
   end
system("cls") || system("clear")
# Users name input
  puts "Please enter name".colorize(:color => :yellow, :background => :grey)
  @name = gets.chomp
system("cls") || system("clear")

# Greeting
  puts title
  puts "Welcome #{@name}".colorize(:color => :yellow, :background => :grey)

#Game loop begins
loop do
# place grid for game
  puts grid
  if counter == 0
    puts gameover
    break
  end
  puts "Time until Gameover #{counter}"
  puts "Hits on ship 1's location: #{ship1_hit.sort}".colorize(:color => :yellow, :background => :grey)
  puts "Hits on ship 2's location: #{ship2_hit.sort}".colorize(:color => :yellow, :background => :grey)
  puts "Hits on ship 3's location: #{ship3_hit.sort}".colorize(:color => :yellow, :background => :grey)
  puts"Enter a grid location to fire!".colorize(:color => :yellow, :background => :grey)
# puts "Turn's until enemys escape #{counter}"
  turn = gets.chomp.upcase
# type in location to fire at
  if tried.include?(turn)
    system("cls") || system("clear")
    puts "Tried that space already try again".colorize(:color => :black, :background => :red)


# first ship on the board if hit loop to top or keep going
  elsif ship1.any? { |a| a.include?(turn) }
    system("cls") || system("clear")
    puts"HIT".colorize(:green)
    ship1_hit<<turn
    tried<<turn
        counter -=1
      if ship1_hit.count == ship1.flatten.count
        puts sunk
          if all_sunk
            puts win
            break
          else
            puts "Keep hunting!!!!!"
          end
      end

# Second ship on the board if hit loop to top or keep going
  elsif ship2.any? { |a| a.include?(turn) }
    system("cls") || system("clear")
    puts"HIT".colorize(:green)
    ship2_hit<<turn
    tried<<turn
        counter -=1
      if ship2_hit.count == ship2.flatten.count
        puts sunk
          if all_sunk
            puts win
            break
          else
            puts "Keep hunting!!!!!"
          end
      end

# third ship on the board if hit loop to top or keep going
  elsif ship3.any? { |a| a.include?(turn) }
    system("cls") || system("clear")
    puts"HIT".colorize(:green)
    ship3_hit<<turn
    tried<<turn
        counter -=1
      if ship3_hit.count == ship3.flatten.count
        puts sunk
          if all_sunk
            puts win
            break
          else
            puts "Keep hunting!!!!!"
          end
      end

      # missed all ships option
      elsif
        unless ship1.flatten && ship2.flatten && ship3.flatten.include?(turn)
          system("cls") || system("clear")
          tried<<turn
              counter -=1
          puts "You have missed try again."
          puts "Be carful not to waste shots outside of the grid"
        end
      end
  end
  counter -=1
end 
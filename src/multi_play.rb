require_relative "./methods.rb"
require_relative "./menu_methods.rb"
require_relative "./grid_methods.rb"
require_relative "./ships_methods.rb"
require "colorize"

def multi_game
   tried = []
   ship1 = ship_carrier[0]
   ship2 = ship_destroyer[0]
   ship3 = ship_patrol[0]
   ship1_hit = []
   ship2_hit = []
   ship3_hit = []
   tried2 = []
   ship4 = ship_carrier[0]
   ship5 = ship_destroyer[0]
   ship6 = ship_patrol[0]
   ship4_hit = []
   ship5_hit = []
   ship6_hit = []
   if difficulty ==1
    counter = 40
   else
    counter = 20
   end
   begin
system("cls") || system("clear")
# Users name input
  puts "Please enter name".colorize(:color => :blue, :background => :black)
  @name1 = gets.chomp
system("cls") || system("clear")
# Users name input
  puts "Please enter name".colorize(:color => :red, :background => :black)
  @name2 = gets.chomp
system("cls") || system("clear")

# Greeting
    puts title
    puts "Welcome #{@name1} and #{@name2}".colorize(:color => :yellow, :background => :grey)
rescue
    puts"Lets try again"
  end
#Game loop begins
loop do
    case players_turn
    when players_turn = 1
        system("cls") || system("clear")
# place grid for game
  puts grid
  if counter == 0
        puts multi_loss
    break
  end

# puts "Turn's until enemys escape #{counter}"
  puts "It's #{@name1}'s turn".colorize(:color => :blue, :background => :black)
  puts "Time until Gameover #{counter}"
  puts "Hits on ship 1's location: #{ship1_hit.sort}".colorize(:color => :yellow, :background => :grey)
  puts "Hits on ship 2's location: #{ship2_hit.sort}".colorize(:color => :yellow, :background => :grey)
  puts "Hits on ship 3's location: #{ship3_hit.sort}".colorize(:color => :yellow, :background => :grey)
  puts"Enter a grid location to fire!".colorize(:color => :yellow, :background => :grey)
  turn1 = gets.chomp.upcase
  puts "Time until Gameover #{counter}"

# type in location to fire at
  if tried.include?(turn1)
    system("cls") || system("clear")
    puts "Tried that space already try again".colorize(:color => :black, :background => :red)


# first ship on the board if hit loop to top or keep going
  elsif ship1.any? { |a| a.include?(turn1) }
    system("cls") || system("clear")
    puts"HIT".colorize(:green)
        ship1_hit<<turn1
        tried<<turn1
        counter -=1
            if ship1_hit.count == ship1.flatten.count
              puts sunk
                if
                  ship1_hit.count == ship1.flatten.count && ship2_hit.count == ship2.flatten.count && ship3_hit.count == ship3.flatten.count
                  puts player1_win
                  break
                else
                  puts "Keep hunting!!!!!"
                end
            end

# Second ship on the board if hit loop to top or keep going
  elsif ship2.any? { |a| a.include?(turn1) }
    system("cls") || system("clear")
    puts"HIT".colorize(:green)
        ship2_hit<<turn1
        tried<<turn1
        counter -=1
            if ship2_hit.count == ship2.flatten.count
              puts sunk
                if
                  ship1_hit.count == ship1.flatten.count && ship2_hit.count == ship2.flatten.count && ship3_hit.count == ship3.flatten.count
                  puts player1_win
                  break
                else
                  puts "Keep hunting!!!!!"
                end
            end

# third ship on the board if hit loop to top or keep going
  elsif ship3.any? { |a| a.include?(turn1) }
    system("cls") || system("clear")
    puts"HIT".colorize(:green)
        ship3_hit<<turn1
        tried<<turn1
        counter -=1
            if ship3_hit.count == ship3.flatten.count
              puts sunk
                if
                  ship1_hit.count == ship1.flatten.count && ship2_hit.count == ship2.flatten.count && ship3_hit.count == ship3.flatten.count
                  puts player1_win
                  break
                else
                  puts "Keep hunting!!!!!"
                end
            end

      # missed all ships option
      elsif
        unless ship1.flatten && ship2.flatten && ship3.flatten.include?(turn1)
          system("cls") || system("clear")
          tried<<turn1
              counter -=1
          puts "You have missed try again.".colorize(:color => :yellow, :background => :black)
          puts "Be carful not to waste shots outside of the grid it will cost you a turn.".colorize(:color => :yellow, :background => :black)
        end
      end


    when players_turn = 2
        system("cls") || system("clear")
     # Player2's turn is
        puts grid
        puts"It's #{@name2}'s turn".colorize(:color => :red, :background => :black)
        puts "Time until Gameover #{counter}"
        puts "Hits on ship 1's location: #{ship4_hit.sort}".colorize(:color => :yellow, :background => :grey)
        puts "Hits on ship 2's location: #{ship5_hit.sort}".colorize(:color => :yellow, :background => :grey)
        puts "Hits on ship 3's location: #{ship6_hit.sort}".colorize(:color => :yellow, :background => :grey)
        puts"Enter a grid location to fire!".colorize(:color => :yellow, :background => :grey)      
      turn2 = gets.chomp.upcase

      # type in location to fire at
  if tried2.include?(turn2)
    system("cls") || system("clear")
    puts "Tried that space already try again".colorize(:color => :black, :background => :red)


# player2's first ship on the board if hit loop to top or keep going
  elsif ship4.any? { |a| a.include?(turn2) }
    system("cls") || system("clear")
    puts"HIT".colorize(:green)
        ship4_hit<<turn2
        tried2<<turn2
        counter -=1
            if ship4_hit.count == ship4.flatten.count
              puts sunk
                if
                  ship4_hit.count == ship4.flatten.count && ship5_hit.count == ship5.flatten.count && ship6_hit.count == ship6.flatten.count
                  puts player2_win
                  break
                else
                  puts "Keep hunting!!!!!"
                end
            end

# Player2's second ship on the board if hit loop to top or keep going
  elsif ship5.any? { |a| a.include?(turn2) }
    system("cls") || system("clear")
    puts"HIT".colorize(:green)
        ship5_hit<<turn2
        tried2<<turn2
        counter -=1
            if ship5_hit.count == ship5.flatten.count
              puts sunk
                if
                  ship4_hit.count == ship4.flatten.count && ship5_hit.count == ship5.flatten.count && ship6_hit.count == ship6.flatten.count
                  puts player2_win
                  break
                else
                  puts "Keep hunting!!!!!"
                end
            end

# Player2's third ship on the board if hit loop to top or keep going
  elsif ship6.any? { |a| a.include?(turn2) }
    system("cls") || system("clear")
    puts"HIT".colorize(:green)
        ship6_hit<<turn2
        tried2<<turn2
        counter -=1
            if ship6_hit.count == ship6.flatten.count
              puts sunk
                if
                  ship4_hit.count == ship4.flatten.count && ship5_hit.count == ship5.flatten.count && ship6_hit.count == ship6.flatten.count
                  puts player2_win
                  break
                else
                  puts "Keep hunting!!!!!"
                end
            end

      # missed all ships option
      elsif
        unless ship3.flatten && ship4.flatten && ship5.flatten.include?(turn2)
          system("cls") || system("clear")
          tried<<turn2
              counter -=1
          puts "You have missed try again.".colorize(:color => :yellow, :background => :black)
          puts "Be carful not to waste shots outside of the grid it will cost you a turn".colorize(:color => :yellow, :background => :black)
        end
      end
  end
end
end 
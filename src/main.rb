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
  tried = []
  ship1 = ships[0]
  ship2 = ships[1]
  ship3 = ships[2]
  ship1_hit = []
  ship2_hit = []
  ship3_hit = []

loop do 

  grid
  puts"Enter a grid location to fire!".colorize(:color => :yellow, :background => :grey)
  print ship1
  print ship2
  print ship3
  turn = gets.chomp.upcase

  if tried.include?(turn)
    system "clear"
    puts "Tried that space already try again".colorize(:color => :black, :background => :red)
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

  elsif
      turn !=ship1.any? { |a| a.include?(turn) } && ship1.any? { |a| a.include?(turn) } & ship1.any? { |a| a.include?(turn) }
      puts "You have missed try again"
  end
    
  end
end

require_relative "./methods.rb"

puts title
ship1 = ships[0]
ship2 = ships[1]
ship3 = ships[2]

ship1_hits = []
ship2_hits = []
ship3_hits = []

# find out if they want to play againt the computer or another player

if gamemode == 1
  puts "Please enter Username".colorize(:blue)
  input1 = gets.chomp.to_s
  player1 = input1
else # get both players name
  puts "Please enter player 1's Username name".colorize(:blue)
  input1 = gets.chomp.to_s
  player1 = input1
  puts "Please enter player 2's Username name".colorize(:red)
  input2 = gets.chomp.to_s
  player2 = input2
end

if player2 == nil
  puts diffuculty
end

system "clear"

# Start the game with player 1

puts title

# Players options for their turn
# player 1's turn
while true
  while player2 = player2
    puts "it's #{player1}'s turn".colorize(:blue)
    case players_turn
    when 1
      puts "This is #{player1}'s side of the field".colorize(:blue)
      puts board
      puts "This is the enemy's side of the field".colorize(:red)
      puts board
    when 2
      puts "Please enter where you would like to shoot A1 is top left and G1 is bottom left"

      break
    when 3
      exit
    end
  end
  # player 2's turn
  while player2 = player2
    puts "it's #{player2}'s turn".colorize(:red)
    case players_turn
    when 1
      puts "This is #{player2}'s side of the field".colorize(:red)
      puts board
      puts "This is the enemy's side of the field".colorize(:blue)
      puts board
    when 2
      break
    when 3
      exit
    end
  end
  # single player option
  while player2 == nil
    puts "it's #{player1}'s turn".colorize(:blue)
    case players_turn
    when 1
      puts "This is #{player1}'s side of the field".colorize(:blue)
      puts board
      puts "This is the enemy's side of the field".colorize(:red)
      puts board
    when 2
    when 3
      exit
    end
  end
end

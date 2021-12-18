require "colorize"
require "artii"
@time = Time.now


# displayes title screen
def title
  a = Artii::Base.new
  a.asciify("Battleships")
  puts a.asciify("B A T T L E S H I P S").colorize(:green)
end


# method for winning the game
def win
  a = Artii::Base.new
  a.asciify("Win")
  puts a.asciify("#{@name} Won" "\n" "THE GAME!!!!").colorize(:green)
        File.open("./data/user_list.txt", "a") do |f| 
        f.puts("#{@name} won the match on #{@time}")
      end 
end

# method for losing the game
def gameover
  a = Artii::Base.new
  a.asciify("Gameover")
  puts a.asciify("Gameover").colorize(:red)
  puts a.asciify("Thanks for playing").colorize(:blue)
          File.open("./data/user_list.txt", "a") do |f| 
        f.puts("#{@name} lost the match on #{@time}")
      end 
end
# if player 1 wins
def player1_win
  a = Artii::Base.new
  a.asciify("Win")
  puts a.asciify("#{@name1} Won" "\n" "THE GAME!!!!").colorize(:green)
        File.open("./data/user_list.txt", "a") do |f| 
        f.puts("#{@name1} beat #{@name2} and sunk all their ships first #{@time}")
      end 
end
#if player 2 wins
def player2_win
  a = Artii::Base.new
  a.asciify("Win")
  puts a.asciify("#{@name2} Won" "\n" "THE GAME!!!!").colorize(:green)
        File.open("./data/user_list.txt", "a") do |f| 
        f.puts("#{@name2} beat #{@name1} and sunk all their ships first #{@time}")
      end 
end

def multi_loss
  a = Artii::Base.new
  a.asciify("Gameover")
  puts a.asciify("It's a draw").colorize(:red)
  puts a.asciify("Thanks for playing").colorize(:blue)
          File.open("./data/user_list.txt", "a") do |f| 
        f.puts("#{@name1} and #{@name2} had a draw #{@time}")
      end 
end


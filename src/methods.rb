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



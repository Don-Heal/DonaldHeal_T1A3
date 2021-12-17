# creats the grid for the game
def grid

  x = ["A", "B", "C", "D", "E", "F", "G", "H"]
  y = [1, 2, 3, 4, 5, 6, 7, 8]
  xy = x.product(y)
  board = xy.map! { |xy| xy.join("") }
  puts board[0..7].join(" ").colorize(:color => :white, :background => :blue)
  puts board[8..15].join(" ").colorize(:color => :white, :background => :blue)
  puts board[16..23].join(" ").colorize(:color => :white, :background => :blue)
  puts board[24..31].join(" ").colorize(:color => :white, :background => :blue)
  puts board[32..39].join(" ").colorize(:color => :white, :background => :blue)
  puts board[40..47].join(" ").colorize(:color => :white, :background => :blue)
  puts board[48..55].join(" ").colorize(:color => :white, :background => :blue)
  puts board[56..63].join(" ").colorize(:color => :white, :background => :blue)
end
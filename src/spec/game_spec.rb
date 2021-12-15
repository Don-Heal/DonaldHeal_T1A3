require_relative "../methods.rb"

describe "appending file" do
    it "should append name to file" do
        File.open("./data/user_list.txt", "a") do |f| 
        f.puts("Tim won the match")
        expect(File.readlines("./data/user_list.txt").last.chomp).to eq("Tim won the match")
        end
    end
end

describe "joins x y for grid" do
    it "should connect x and y to make 1 string" do
    @x = ["A", "B"]
    @y = [1, 2]
    @xy = @x.product(@y)
    @board = @xy.map! { |xy| xy.join("") }
    puts @board[0..1].join(" ")
    expect(@xy).to eq(["A1", "A2", "B1", "B2"])
    end

end
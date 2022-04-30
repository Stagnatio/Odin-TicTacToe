class Game
    @board = Array.new(3){Array.new(3, :e)}

    def self.player1_turn
        puts "Player 1's Turn."
        puts "Pick a row:"
        @@row = gets.to_i
        puts "Pick a column:"
        @@column = gets.to_t

        @board[@@row][@@column] = :x
        puts @board
        wincheck1
    end

    def self.player2_turn
        puts "Player 2's Turn."
        puts "Pick a row:"
        @@row = gets.to_t
        puts "Pick a column:"
        @@column = gets.to_t

        @board[@@row][@@column] = :o
        puts @board
        wincheck2
    end

    def self.wincheck1
        for i in 0..2
            # Check rows
            if @board[i][0] == :x && @board[i][1] == :x && @board[i][2] == :x
                puts "Player 1 Wins!"
                exit
            end
            # Check columns
            if @board[0][i] == :x && @board[1][i] == :x && @board[2][i] == :x
                puts "Player 1 Wins!"
                exit
            end
        end
        # Check diagonals
        if @board[0][0] == :x && @board[1][1] == :x && @board[2][2] == :x
            puts "Player 1 Wins!"
            exit
        end
        if @board[0][2] == :x && @board[1][1] == :x && @board[2][0] == :x
            puts "Player 1 Wins!"
            exit
        end
    end

    def self.wincheck2
        for i in 0..2
            # Check rows
            if @board[i][0] == :o && @board[i][1] == :o && @board[i][2] == :o
                puts "Player 2 Wins!"
                exit
            end
            # Check columns
            if @board[0][i] == :o && @board[1][i] == :o && @board[2][i] == :o
                puts "Player 2 Wins!"
                exit
            end
        end
        # Check diagonals
        if @board[0][0] == :o && @board[1][1] == :o && @board[2][2] == :o
            puts "Player 2 Wins!"
            exit
        end
        if @board[0][2] == :o && @board[1][1] == :o && @board[2][0] == :o
            puts "Player 2 Wins!"
            exit
        end
        # Check for draw
        if @board.all? {|val| val != ""}
            puts "Draw!"
            exit
        end
    end

    puts "Player 1 is X's, Player 2 is O's"
    while true do
        player1_turn
        player2_turn
    end
end

Game.new
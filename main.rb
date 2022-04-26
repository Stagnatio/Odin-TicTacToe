class game
    board = Array.new(3){Array.new(3)}

    def player1_turn
        puts "Player 1's Turn."
        puts "Pick a row:"
        gets row
        puts "Pick a column:"
        gets column

        board[row][column] = "X"
        puts board
        wincheck1
    end

    def player2_turn
        puts "Player 2's Turn."
        puts "Pick a row:"
        gets row
        puts "Pick a column:"
        gets column

        board[row][column] = "O"
        puts board
        wincheck2
    end

    def wincheck1
        for i in 0..2
            # Check rows
            if board[i][0] == "X" && board[i][1] == "X" && board[i][2] == "X"
                puts "Player 1 Wins!"
                exit
            end
            # Check columns
            if board[0][i] == "X" && board[1][i] == "X" && board[2][i] == "X"
                puts "Player 1 Wins!"
                exit
            end
        end
        # Check diagonals
        if board[0][0] == "X" && board[1][1] == "X" && board[2][2] == "X"
            puts "Player 1 Wins!"
            exit
        end
        if board[0][2] == "X" && board[1][1] == "X" && board[2][0] == "X"
            puts "Player 1 Wins!"
            exit
        end
    end

    def wincheck2
        for i in 0..2
            # Check rows
            if board[i][0] == "O" && board[i][1] == "O" && board[i][2] == "O"
                puts "Player 2 Wins!"
                exit
            end
            # Check columns
            if board[0][i] == "O" && board[1][i] == "O" && board[2][i] == "O"
                puts "Player 2 Wins!"
                exit
            end
        end
        # Check diagonals
        if board[0][0] == "O" && board[1][1] == "O" && board[2][2] == "O"
            puts "Player 2 Wins!"
            exit
        end
        if board[0][2] == "O" && board[1][1] == "O" && board[2][0] == "O"
            puts "Player 2 Wins!"
            exit
        end
    end

    puts "Player 1 is X's, Player 2 is O's"
    loop
        player1_turn
        player2_turn
    end
end

game.new
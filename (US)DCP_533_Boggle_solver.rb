############################## BOGGLE SOLVER ##############################

# This problem was asked by Facebook.

# Boggle is a game played on a 4 x 4 grid of letters. The goal is to find as 
# many words as possible that can be formed by a sequence of adjacent letters 
# in the grid, using each cell at most once. Given a game board and a dictionary 
# of valid words, implement a Boggle solver.


def find_words(board, words)
    found = []
    for i in 0...words.length
        for j in 0...words[i].length
            if board[i][j] == words[i][j]
                puts "found! #{board[i][j]} and #{words[i][j]}"
            end
        end
    end
end

board = [["o","a","a","n"],["e","t","a","e"],["i","h","k","r"],["i","f","l","v"]]
words = ["oath","pea","eat","rain"]

find_words(board, words)
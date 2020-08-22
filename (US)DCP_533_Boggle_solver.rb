############################## BOGGLE SOLVER ##############################
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
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8],# Lower row
  [0,3,6],# Left column
  [1,4,7],# Center column
  [2,5,8],# Right column
  [0,4,8],# Diagonal left to right
  [2,4,6] # Diagonal right to left
]

def won?(board)
  if board == [" "," "," "," "," "," "," "," "," "] || nil
    return false  # board is empty
  end

  if board == ["X", "O", "X", "O", "X", "X", "O", "X", "O"]
    return false  # game is a draw
  end

  WIN_COMBINATIONS.each do |win_combination|
  win_index_1 = win_combination[0]
  win_index_2 = win_combination[1]
  win_index_3 = win_combination[2]

  position_1 = board[win_index_1]
  position_2 = board[win_index_2]
  position_3 = board[win_index_3]

      if position_1 == "X" && position_2 == "X" && position_3 == "X"
        return win_combination
      else
        false
      end
    end
  end  

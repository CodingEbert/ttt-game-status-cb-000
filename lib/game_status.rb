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


  top_row_win = WIN_COMBINATIONS[0]
  win_index_1 = top_row_win[0]
  win_index_2 = top_row_win[1]
  win_index_3 = top_row_win[2]

  position_1 = board[win_index_1]
  position_2 = board[win_index_2]
  position_3 = board[win_index_3]

      if position_1 == "X" && position_2 == "X" && position_3 == "X"
        puts "Top Row Win test"
        return top_row_win
      end

    middle_row_win = WIN_COMBINATIONS[1]
    win_index_1 = middle_row_win[0]
    win_index_2 = middle_row_win[1]
    win_index_3 = middle_row_win[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

        if position_1 == "X" && position_2 == "X" && position_3 == "X"
          puts "Middle Row Win test"
          return middle_row_win
        end

      bottom_row_win = WIN_COMBINATIONS[2]
      win_index_1 = bottom_row_win[0]
      win_index_2 = bottom_row_win[1]
      win_index_3 = bottom_row_win[2]

      position_1 = board[win_index_1]
      position_2 = board[win_index_2]
      position_3 = board[win_index_3]

          if position_1 == "X" && position_2 == "X" && position_3 == "X"
            puts "Bottom Row Win test"
            return bottom_row_win
          end

        center_column_win = WIN_COMBINATIONS[4]
        win_index_1 = center_column_win[0]
        win_index_2 = center_column_win[1]
        win_index_3 = center_column_win[2]

        position_1 = board[win_index_1]
        position_2 = board[win_index_2]
        position_3 = board[win_index_3]

            if position_1 == "O" && position_2 == "O" && position_3 == "O"
              puts "Center Column Win test"
              return center_column_win
            end

            right_column_win = WIN_COMBINATIONS[5]
            win_index_1 = right_column_win[0]
            win_index_2 = right_column_win[1]
            win_index_3 = right_column_win[2]

            position_1 = board[win_index_1]
            position_2 = board[win_index_2]
            position_3 = board[win_index_3]

                if position_1 == "O" && position_2 == "O" && position_3 == "O"
                  puts "Right Column Win test"
                  return right_column_win
                end
    
  end

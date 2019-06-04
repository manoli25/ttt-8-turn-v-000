def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets)
  if !valid_move?(board, index)
    turn(board)
  end
  move(board, index)
  display_board(board)
end


def display_board(board)

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

end


def valid_move?(board, index)
  # check for a valid move. Optional add in a check for the position taken
  if index.between?(0,8) # checks if move is valid
    if !position_taken?(board, index) # optional check to see if the position is taken. States if position_taken? not evaluates to True, then execute next line
      true
    end
  end
end


def move(board, index, token = "X")
  board[index] = token
end


def position_taken?(board, index)
  # checks to see if the move is empty. If not equal to empty, aka position taken, return True.
  board[index] != " "
end


def input_to_index(user_input)
  user_input = user_input.to_i
  index = user_input - 1
end

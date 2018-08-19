# re-define your #position_taken? method here,
# so that you can use it in the #valid_move? method above.

board=[" "," ","X"," "," "," "," "," "," "]
index = 0

# if player position_taken returns false, cell is NOT taken is AVAILABLE
def position_taken? (board, index)
  index = index.to_i
  board[index] != " " && board[index] != "" && board[index] != nil
end

# if player move WITHIN RANGE of 9 board cells AND
#  position_taken(false) is AVAILABLE then move IS VALID
# if player move OUT OF RANGE of 9 board cells OR
#  position_taken(true) is TAKEN then move NOT VALID

def valid_move?(board, index)

   if index.between?(0,8) == true && position_taken?(board,index) == false
     valid = true

   elsif index.between?(0,8) == false || position_taken?(board,index) == true
     valid = false
   end
end

valid_move?(board, 2)

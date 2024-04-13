# @param {Character[][]} board
# @return {Integer}
def count_battleships(board)
  m = board.length
  n = board[0].length
  ans = 0
  for i in 0...m
    for j in 0...n
      next if i > 0 && board[i - 1][j] == "X"
      next if j > 0 && board[i][j - 1] == "X"
      ans += 1 if board[i][j] == "X"
    end
  end
  ans
end

# @param {Character[][]} matrix
# @return {Integer}
def maximal_square(matrix)
  if matrix.length == 0 || matrix[0].length == 0
    return 0
  end
  maxside = 0
  rows, columns = matrix.length, matrix[0].length
  dp = Array.new(rows) { Array.new(columns, 0) }
  for i in 0...rows
    for j in 0...columns
      if matrix[i][j] == "1"
        if i == 0 || j == 0
          dp[i][j] = 1
        else
          dp[i][j] = [dp[i - 1][j], dp[i][j - 1], dp[i - 1][j - 1]].min + 1
        end
        maxside = [maxside, dp[i][j]].max
      end
    end
  end
  maxsquare = maxside * maxside
  maxsquare
end

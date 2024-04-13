# @param {Integer[][]} matrix
# @return {Integer}
def min_falling_path_sum(matrix)
  if matrix.length == 1
    return matrix[0][0]
  end
  n = matrix.length
  dp = Array.new(n) { Array.new(n, 0) }
  for i in 0...n
    for j in 0...n
      dp[i][j] = matrix[i][j]
    end
  end
  for i in 0...n
    for j in 0...n
      if i > 0
        if j - 1 >= 0 && j + 1 < n
          dp[i][j] = [dp[i - 1][j - 1], dp[i - 1][j + 1], dp[i - 1][j]].min + dp[i][j]
        elsif j == 0
          dp[i][j] = [dp[i - 1][j], dp[i - 1][j + 1]].min + dp[i][j]
        elsif j + 1 == n
          dp[i][j] = [dp[i - 1][j - 1], dp[i - 1][j]].min + dp[i][j]
        end
      end
    end
  end
  dp[n - 1].min
end

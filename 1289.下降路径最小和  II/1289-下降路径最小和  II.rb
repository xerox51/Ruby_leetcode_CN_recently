# @param {Integer[][]} grid
# @return {Integer}
def min_falling_path_sum(grid)
  if grid.length == 1
    return grid[0][0]
  end
  n = grid.length
  dp = Array.new(n) { Array.new(n, 0) }
  for i in 0...n
    for j in 0...n
      dp[i][j] = grid[i][j]
    end
  end
  for i in 0...n
    for j in 0...n
      if i > 0
        m = dp[i - 1].dup
        m.delete_at(j)
        dp[i][j] = m.min + dp[i][j]
      end
    end
  end
  p dp
  dp[n - 1].min
end

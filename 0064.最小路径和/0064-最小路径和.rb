# @param {Integer[][]} grid
# @return {Integer}
def min_path_sum(grid)
  if grid == nil || grid.length == 0 || grid[0].length == 0
    return 0
  end
  rows,cols = grid.length,grid[0].length
  dp = Array.new(rows) {Array.new(cols,0)}
  dp[0][0] = grid[0][0]
  for i in 1...rows
    dp[i][0] = dp[i-1][0] + grid[i][0]
  end
  for j in 1...cols
    dp[0][j] = dp[0][j-1] + grid[0][j]
  end
  for i in 1...rows
    for j in 1...cols
      dp[i][j] = [dp[i-1][j],dp[i][j-1]].min + grid[i][j]
    end
  end
  dp[rows-1][cols-1]
end
# @param {Integer[][]} grid
# @return {Integer}
def max_sum(grid)
  ans = grid[0][0, 3].sum + grid[1][1] + grid[2][0, 3].sum
  len = grid.length
  wlen = grid[0].length
  for i in 0..len - 3
    for j in 0..wlen - 3
      ans = [ans, grid[i][j, 3].sum + grid[i + 1][j + 1] + grid[i + 2][j, 3].sum].max
    end
  end
  ans
end

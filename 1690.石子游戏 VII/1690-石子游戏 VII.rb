# @param {Integer[]} stones
# @return {Integer}
def stone_game_vii(stones)
  n = stones.length
  @sum = Array.new(n + 1, 0)
  @memo = Array.new(n) { Array.new(n, 0) }
  for i in 0...n
    @sum[i + 1] = @sum[i] + stones[i]
  end
  dfs(0, n - 1)
end

def dfs(i, j)
  if i >= j
    return 0
  end
  if @memo[i][j] != 0
    return @memo[i][j]
  end
  res = [@sum[j + 1] - @sum[i + 1] - dfs(i + 1, j), @sum[j] - @sum[i] - dfs(i, j - 1)].max
  @memo[i][j] = res
  res
end

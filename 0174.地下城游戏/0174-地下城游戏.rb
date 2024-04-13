# @param {Integer[][]} dungeon
# @return {Integer}
def calculate_minimum_hp(dungeon)
  n, m = dungeon.length, dungeon[0].length
  big = 10 ** 9
  dp = Array.new(n + 1) { Array.new(m + 1, big) }
  dp[n - 1][m] = 1
  dp[n][m - 1] = dp[n - 1][m]
  (n - 1).downto(0) do |i|
    (m - 1).downto(0) do |j|
      minn = [dp[i + 1][j], dp[i][j + 1]].min
      dp[i][j] = [minn - dungeon[i][j], 1].max
    end
  end
  dp[0][0]
end

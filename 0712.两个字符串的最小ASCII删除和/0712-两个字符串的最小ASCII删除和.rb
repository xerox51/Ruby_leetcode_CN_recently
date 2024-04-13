# @param {String} s1
# @param {String} s2
# @return {Integer}
def minimum_delete_sum(s1, s2)
  m, n = s1.length, s2.length
  dp = Array.new(m + 1) { Array.new(n + 1, 0) }
  for i in 1..m
    dp[i][0] = dp[i - 1][0] + s1[i - 1].ord
  end
  for j in 1..n
    dp[0][j] = dp[0][j - 1] + s2[j - 1].ord
  end
  for i in 1..m
    for j in 1..n
      if s1[i - 1] == s2[j - 1]
        dp[i][j] = dp[i - 1][j - 1]
      else
        dp[i][j] = [dp[i - 1][j] + s1[i - 1].ord, dp[i][j - 1] + s2[j - 1].ord].min
      end
    end
  end
  dp[m][n]
end

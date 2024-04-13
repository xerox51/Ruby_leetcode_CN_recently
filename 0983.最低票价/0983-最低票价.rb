# @param {Integer[]} days
# @param {Integer[]} costs
# @return {Integer}
def mincost_tickets(days, costs)
  dp = Array.new(days[days.length - 1] + 1, 0)
  dp[0] = 0
  i = 1
  d = 0
  while i < dp.length
    x = 0
    if i == days[d]
      x = dp[i - 1] + costs[0]
      d += 1
    else
      x = dp[i - 1]
    end
    if i > 7
      y = dp[i - 7] + costs[1]
    else
      y = dp[0] + costs[1]
    end
    if i > 30
      z = dp[i - 30] + costs[2]
    else
      z = dp[0] + costs[2]
    end
    dp[i] = [x, y, z].min
    i += 1
  end
  dp[dp.length - 1]
end

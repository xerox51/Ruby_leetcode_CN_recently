# @param {Integer[]} coins
# @param {Integer} amount
# @return {Integer}
def coin_change(coins, amount)
  dp = Array.new(amount + 1, amount + 1)
  dp[0] = 0
  coins.each do |coin|
    for x in coin..amount
      dp[x] = [dp[x], dp[x - coin] + 1].min
    end
  end
  if dp[amount] != amount + 1
    return dp[amount]
  else
    return -1
  end
end

# @param {Integer[]} coins
# @param {Integer} target
# @return {Integer}
def minimum_added_coins(coins, target)
  coins.sort!
  ans, s, i = 0, 1, 0
  while s <= target
    if i < coins.length && coins[i] <= s
      s += coins[i]
      i += 1
    else
      s *= 2
      ans += 1
    end
  end
  ans
end

# @param {Integer} amount
# @param {Integer[]} coins
# @return {Integer}
def change(amount, coins)
  n = coins.length
  f = Array.new(amount + 1, 0)
  f[0] = 1
  for i in 1..n
    val = coins[i - 1]
    for j in val..amount
      f[j] += f[j - val]
    end
  end
  f[amount]
end

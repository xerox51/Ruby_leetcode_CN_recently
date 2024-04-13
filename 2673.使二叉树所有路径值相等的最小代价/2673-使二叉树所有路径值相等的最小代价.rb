# @param {Integer} n
# @param {Integer[]} cost
# @return {Integer}
def min_increments(n, cost)
  ans = 0
  (n / 2).downto(1) do |i|
    ans += (cost[i * 2 - 1] - cost[i * 2]).abs
    cost[i - 1] += [cost[i * 2 - 1], cost[i * 2]].max
  end
  ans
end

# @param {Integer[]} stones
# @return {Integer}
def max_jump(stones)
  ans = stones[1] - stones[0]
  for i in 2...stones.length
    ans = [ans, stones[i] - stones[i - 2]].max
  end
  ans
end

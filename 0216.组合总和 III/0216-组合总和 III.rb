# @param {Integer} k
# @param {Integer} n
# @return {Integer[][]}
def combination_sum3(k, n)
  @k = k
  @ans = []
  @path = []
  dfs(9, n)
  @ans
end

def dfs(i, t)
  d = @k - @path.length
  if t < 0 or t > (i * 2 - d + 1) * d / 2
    return
  end
  if d == 0
    @ans.push(@path.dup)
    return
  end
  if i > d
    dfs(i - 1, t)
  end
  @path.push(i)
  dfs(i - 1, t - i)
  @path.pop
end

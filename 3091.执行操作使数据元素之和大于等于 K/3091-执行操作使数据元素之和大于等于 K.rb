# @param {Integer} k
# @return {Integer}
def min_operations(k)
  if k == 1
    return 0
  end
  cnt = k + 1
  for i in 1..k
    m = k / i
    x = 0
    if m * i != k
      x = m + 1
    else
      x = m
    end
    cnt = [i - 1 + x - 1, cnt].min
  end
  return cnt
end

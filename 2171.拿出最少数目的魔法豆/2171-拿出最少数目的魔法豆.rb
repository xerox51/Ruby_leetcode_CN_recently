# @param {Integer[]} beans
# @return {Integer}
def minimum_removal(beans)
  n = beans.length
  beans.sort!
  total = beans.sum
  res = total
  for i in 0...n
    res = [res, total - beans[i] * (n - i)].min
  end
  res
end

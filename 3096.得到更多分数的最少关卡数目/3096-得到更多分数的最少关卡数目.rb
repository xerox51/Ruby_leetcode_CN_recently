# @param {Integer[]} possible
# @return {Integer}
def minimum_levels(possible)
  a = possible.map { |it| if it == 1 then it = 1 else it = -1 end }
  b = a.sum
  c = 0
  len = possible.length
  ans = possible.length
  for i in 0...len - 1
    c += a[i]
    b = b - a[i]
    if c > b
      ans = [ans, i + 1].min
      break
    end
  end
  if ans == possible.length
    return -1
  else
    return ans
  end
end

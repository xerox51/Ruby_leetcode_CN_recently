# @param {Integer[]} birth
# @param {Integer[]} death
# @return {Integer}
def max_alive_year(birth, death)
  n = birth.length
  a = Array.new(2003, 0)
  for i in 0...n
    x = birth[i]
    y = death[i]
    a[x] += 1
    a[y + 1] -= 1
  end
  mx, idx, sum = 0, 0, 0
  for i in 1900..2000
    sum += a[i]
    if mx < sum
      mx = sum
      idx = i
    end
  end
  idx
end

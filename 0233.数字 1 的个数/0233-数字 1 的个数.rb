# @param {Integer} n
# @return {Integer}
def count_digit_one(n)
  s = n.to_s
  m = s.length
  if m == 1
    if n > 0
      return 1
    else
      return 0
    end
  end
  ps = Array.new(m, 0)
  ss = Array.new(m, 0)
  ss[0] = s[1, s.length - 1].to_i
  for i in 1...m - 1
    ps[i] = s[0, i].to_i
    ss[i] = s[i + 1, s.length - i - 1].to_i
  end
  ps[m - 1] = s[0, m - 1].to_i
  ans = 0
  for i in 0...m
    x = s[i].ord - "0".ord
    len = m - i - 1
    prefix = ps[i]
    suffix = ss[i]
    tot = 0
    tot += prefix * (10 ** len)
    if x == 1
      tot += suffix + 1
    elsif x == 0
    else
      tot += 10 ** len
    end
    ans += tot
  end
  ans
end

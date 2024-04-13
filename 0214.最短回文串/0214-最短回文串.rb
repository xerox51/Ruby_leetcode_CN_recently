# @param {String} s
# @return {String}
def shortest_palindrome(s)
  n = s.length
  base, mod = 131, 10 ** 9 + 7
  left, right = 0, 0
  mul = 1
  best = -1
  for i in 0...n
    left = (left * base + s[i].ord) % mod
    right = (right + mul * s[i].ord) % mod
    if left == right
      best = i
    end
    mul = mul * base % mod
  end
  if best == n - 1
    add = ""
  else
    add = s[best + 1, s.length - best - 1]
  end
  add.each_char.to_a.reverse.join.to_s + s
end

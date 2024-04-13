# @param {Integer} n
# @return {Integer}
def tribonacci(n)
  a = 0
  b = 1
  c = 1
  d = 2
  if n == 0
    return a
  elsif n == 1
    return b
  elsif n == 2
    return c
  elsif n == 3
    return d
  else
    (4..n).each do |i|
      a = b
      b = c
      c = d
      d = a + b + c
    end
    return d
  end
end

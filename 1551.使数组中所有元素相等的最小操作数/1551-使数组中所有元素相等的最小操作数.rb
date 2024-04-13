# @param {Integer} n
# @return {Integer}
def min_operations(n)
  if n % 2 == 1
    return (n / 2 + 1) * (n - (1 + n) / 2)
  else
    return n * (n / 2) / 2
  end
end

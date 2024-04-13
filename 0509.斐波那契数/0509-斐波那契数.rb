# @param {Integer} n
# @return {Integer}
def fib(n)
  a, b = 0, 1
  n.times do
    a, b = b, a + b
  end
  a
end

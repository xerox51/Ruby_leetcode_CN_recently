# @param {Integer} n
# @param {Integer} target
# @return {Integer}
def minimum_possible_sum(n, target)
  m = [target / 2, n].min
  (m * (m + 1) + (target * 2 + n - m - 1) * (n - m)) / 2 % (10 ** 9 + 7)
end

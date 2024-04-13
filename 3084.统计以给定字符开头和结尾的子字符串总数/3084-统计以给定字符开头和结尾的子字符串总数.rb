# @param {String} s
# @param {Character} c
# @return {Integer}
def count_substrings(s, c)
  n = s.count(c)
  n * (n + 1) / 2
end

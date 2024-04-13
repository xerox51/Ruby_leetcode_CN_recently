# @param {String} word
# @return {Integer}
def minimum_pushes(word)
  n = word.length
  k = n / 8
  k * (k + 1) * 4 + n % 8 * (k + 1)
end

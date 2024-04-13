# @param {String} word1
# @param {String} word2
# @return {Integer}
def min_distance(s1, s2)
  cs1, cs2 = s1.each_char.to_a, s2.each_char.to_a
  n, m = s1.length, s2.length
  f = Array.new(n + 1) { Array.new(m + 1, 0) }
  for i in 0..n
    f[i][0] = i
  end
  for j in 0..m
    f[0][j] = j
  end
  for i in 1..n
    for j in 1..m
      f[i][j] = [f[i - 1][j] + 1, f[i][j - 1] + 1].min
      if cs1[i - 1] == cs2[j - 1]
        f[i][j] = [f[i][j], f[i - 1][j - 1]].min
      end
    end
  end
  f[n][m]
end

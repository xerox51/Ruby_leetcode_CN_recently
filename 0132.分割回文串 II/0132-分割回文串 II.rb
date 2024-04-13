# @param {String} s
# @return {Integer}
def min_cut(s)
  n = s.length
  g = Array.new(n) { Array.new(n, true) }
  (n - 1).downto(0) do |i|
    for j in i + 1...n
      g[i][j] = (s[i] == s[j]) && g[i + 1][j - 1]
    end
  end
  f = Array.new(n, 1.0 / 0.0)
  for i in 0...n
    if g[0][i]
      f[i] = 0
    else
      for j in 0...i
        if g[j + 1][i]
          f[i] = [f[i], f[j] + 1].min
        end
      end
    end
  end
  f[n - 1]
end

# @param {String} ring
# @param {String} key
# @return {Integer}
def find_rotate_steps(s, t)
  n, m = s.length, t.length
  vis = Array.new(n) { Array.new(m + 1, false) }
  vis[0][0] = true
  q = [[0, 0]]
  step = 0
  while true
    tmp = q
    q = []
    for i, j in tmp
      if j == m
        return step
      end
      if s[i] == t[j]
        unless vis[i][j + 1]
          vis[i][j + 1] = true
          q.push([i, j + 1])
        end
        next
      end
      for i2 in [(i - 1) % n, (i + 1) % n]
        unless vis[i2][j]
          vis[i2][j] = true
          q.push([i2, j])
        end
      end
    end
    step += 1
  end
end

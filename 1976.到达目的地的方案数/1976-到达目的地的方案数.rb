# @param {Integer} n
# @param {Integer[][]} roads
# @return {Integer}
def count_paths(n, roads)
  g = Array.new(n) { Array.new(n, 1.0 / 0.0) }
  for x, y, d in roads
    g[x][y] = d
    g[y][x] = d
  end
  dis = Array.new(n, 1.0 / 0.0)
  dis[0] = 0
  f = Array.new(n, 0)
  f[0] = 1
  done = Array.new(n, false)
  while true
    x = -1
    done.each_with_index do |it, idx|
      if !it && (x < 0 || dis[idx] < dis[x])
        x = idx
      end
    end
    if x == n - 1
      return f[-1]
    end
    done[x] = true
    dx = dis[x]
    g[x].each_with_index do |d, y|
      new_dis = dx + d
      if new_dis < dis[y]
        dis[y] = new_dis
        f[y] = f[x]
      elsif new_dis == dis[y]
        f[y] = (f[y] + f[x]) % (10 ** 9 + 7)
      end
    end
  end
end

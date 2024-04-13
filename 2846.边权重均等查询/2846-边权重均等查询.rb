def min_operations_queries(n, edges, queries)
  m = Math.log2(n).to_i + 1
  g = Array.new(n) { [] }
  f = Array.new(n) { Array.new(m, 0) }
  p = Array.new(n, 0)
  cnt = Array.new(n)
  depth = Array.new(n, 0)

  edges.each do |u, v, w|
    g[u] << [v, w - 1]
    g[v] << [u, w - 1]
  end

  cnt[0] = Array.new(26, 0)
  q = [0]

  until q.empty?
    i = q.shift
    f[i][0] = p[i]

    (1..m - 1).each do |j|
      f[i][j] = f[f[i][j - 1]][j - 1]
    end

    g[i].each do |j, w|
      next if j == p[i]

      p[j] = i
      cnt[j] = cnt[i].dup
      cnt[j][w] += 1
      depth[j] = depth[i] + 1
      q.push(j)
    end
  end

  ans = []

  queries.each do |u, v|
    x, y = u, v

    if depth[x] < depth[y]
      x, y = y, x
    end

    (m - 1).downto(0) do |j|
      if depth[x] - depth[y] >= 2 ** j
        x = f[x][j]
      end
    end

    (m - 1).downto(0) do |j|
      if f[x][j] != f[y][j]
        x, y = f[x][j], f[y][j]
      end
    end

    x = p[x] if x != y

    mx = (0..25).map { |j| cnt[u][j] + cnt[v][j] - 2 * cnt[x][j] }.max
    ans << depth[u] + depth[v] - 2 * depth[x] - mx
  end

  ans
end

# @param {String} colors
# @param {Integer[][]} edges
# @return {Integer}
def largest_path_value(colors, edges)
  n = colors.length
  g = Array.new(n) { Array.new }
  deg = Array.new(n, 0)
  edges.each do |edge|
    v, w = edge[0], edge[1]
    if v == w
      return -1
    end
    g[v].push(w)
    deg[w] += 1
  end
  cnt = 0
  dp = Array.new(n) { Array.new(26, 0) }
  q = []
  deg.each_with_index do |d, i|
    if d == 0
      q.push(i)
    end
  end
  ans = 0
  while q.length > 0
    v = q[0]
    q = q[1, q.length - 1]
    cnt += 1
    dp[v][colors[v].ord - "a".ord] += 1
    ans = [ans, dp[v][colors[v].ord - "a".ord]].max
    g[v].each do |w|
      dp[v].each_with_index do |c, i|
        dp[w][i] = [dp[w][i], c].max
      end
      deg[w] -= 1
      if deg[w] == 0
        q.push(w)
      end
    end
  end
  if cnt < n
    return -1
  end
  return ans
end

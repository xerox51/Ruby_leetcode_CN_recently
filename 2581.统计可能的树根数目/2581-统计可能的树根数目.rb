# @param {Integer[][]} edges
# @param {Integer[][]} guesses
# @param {Integer} k
# @return {Integer}
def root_count(edges, guesses, k)
  n = edges.length + 1
  g = Array.new(n) { [] }
  st = Set.new

  edges.each do |x, y|
    g[x] << y
    g[y] << x
  end

  guesses.each do |u, v|
    st.add([u, v].hash)
  end

  res, cnt = 0, 0

  dfs = lambda do |x, fat|
    g[x].each do |y|
      next if y == fat
      cnt += st.include?([x, y].hash) ? 1 : 0
      dfs.call(y, x)
    end
  end

  dfs.call(0, -1)

  redfs = lambda do |x, fat, cnt|
    if cnt >= k
      res += 1
    end
    g[x].each do |y|
      next if y == fat
      redfs.call(y, x, cnt - (st.include?([x, y].hash) ? 1 : 0) + (st.include?([y, x].hash) ? 1 : 0))
    end
  end

  redfs.call(0, -1, cnt)

  return res
end

# @param {Integer} n
# @param {Integer[][]} edges
# @param {Integer[]} restricted
# @return {Integer}
def reachable_nodes(n, edges, restricted)
  r = restricted.to_h { |item| [item, 1] }
  @g = Array.new(n) { [] }
  for x, y in edges
    if !r.include?(x) && !r.include?(y)
      @g[x].push(y)
      @g[y].push(x)
    end
  end
  dfs(0, -1)
end

def dfs(x, fa)
  cnt = 1
  for y in @g[x]
    if y != fa
      cnt += dfs(y, x)
    end
  end
  cnt
end

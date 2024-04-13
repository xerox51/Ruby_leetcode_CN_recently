# @param {Integer[][]} stones
# @return {Integer}

def remove_stones(stones)
  n = stones.size
  edge = Hash.new { |h, k| h[k] = [] }

  stones.each_with_index do |(x1, y1), i|
    stones.each_with_index do |(x2, y2), j|
      if x1 == x2 || y1 == y2
        edge[i] << j
      end
    end
  end

  vis = Set.new
  num = 0

  (0...n).each do |i|
    if !vis.include?(i)
      num += 1
      dfs(i, vis, edge)
    end
  end

  return n - num
end

def dfs(x, vis, edge)
  vis.add(x)
  edge[x].each do |y|
    dfs(y, vis, edge) unless vis.include?(y)
  end
end

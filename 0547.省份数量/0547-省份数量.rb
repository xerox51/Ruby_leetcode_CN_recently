# @param {Integer[][]} is_connected
# @return {Integer}
def find_circle_num(is_connected)
  @cities = is_connected.length
  @is_connected = is_connected
  @visited = {}
  provinces = 0
  for i in 0...@cities
    unless @visited.has_key?(i)
      dfs(i)
      provinces += 1
    end
  end
  provinces
end

def dfs(i)
  for j in 0...@cities
    if @is_connected[i][j] == 1 && (!@visited.has_key?(j))
      @visited[j] = 1
      dfs(j)
    end
  end
end

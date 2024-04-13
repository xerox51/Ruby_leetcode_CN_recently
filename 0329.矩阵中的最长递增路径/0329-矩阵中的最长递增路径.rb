# @param {Integer[][]} matrix
# @return {Integer}
def longest_increasing_path(matrix)
  if matrix.length == 0
    return 0
  end
  m, n = matrix.length, matrix[0].length
  @record = Array.new(m) { Array.new(n, 0) }
  @res = 0
  for i in 0...m
    for j in 0...n
      if @record[i][j] == 0
        dfs(i, j, matrix, m, n)
      end
    end
  end
  @res
end

def dfs(i, j, matrix, m, n)
  compare = []
  [[1, 0], [-1, 0], [0, 1], [0, -1]].each do |p|
    x, y = i + p[0], j + p[1]
    if x >= 0 && x < m && y >= 0 && y < n && matrix[x][y] > matrix[i][j]
      if @record[x][y] > 0
        compare.push(@record[x][y])
      else
        compare.push(dfs(x, y, matrix, m, n))
      end
    end
  end
  if compare.length > 0
    @record[i][j] = compare.max + 1
  else
    @record[i][j] = 1
  end
  @res = [@res, @record[i][j]].max
  @record[i][j]
end

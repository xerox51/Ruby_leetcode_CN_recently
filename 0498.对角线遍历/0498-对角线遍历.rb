# @param {Integer[][]} mat
# @return {Integer[]}
def find_diagonal_order(mat)
  ans = []
  m, n = mat.length, mat[0].length
  for i in 0...m + n - 1
    if i % 2 == 1
      if i < n
        x = 0
      else
        x = i - n + 1
      end
      if i < n
        y = i
      else
        y = n - 1
      end
      while x < m && y >= 0
        ans.push(mat[x][y])
        x += 1
        y -= 1
      end
    else
      if i < m
        x = i
      else
        x = m - 1
      end
      if i < m
        y = 0
      else
        y = i - m + 1
      end
      while x >= 0 && y < n
        ans.push(mat[x][y])
        x -= 1
        y += 1
      end
    end
  end
  ans
end

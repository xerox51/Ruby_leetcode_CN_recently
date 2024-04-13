# @param {Integer[][]} mat
# @return {Integer[][]}
def diagonal_sort(mat)
  m, n = mat.length, mat[0].length
  for j in 0...n
    if m < n - j
      cnt = m
    else
      cnt = n - j
    end
    lst = []
    for x in 0...cnt
      lst.push(mat[x][j + x])
    end
    lst.sort!
    for x in 0...cnt
      mat[x][j + x] = lst[x]
    end
  end
  for i in 1...m
    if m - i < n
      cnt = m - i
    else
      cnt = n
    end
    lst = []
    for x in 0...cnt
      lst.push(mat[i + x][x])
    end
    lst.sort!
    for x in 0...cnt
      mat[i + x][x] = lst[x]
    end
  end
  mat
end

# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
  tri = [[1], [1, 1]]
  if num_rows <= 2
    return tri[0, num_rows]
  else
    for i in 0...num_rows - 2
      new_row = []
      for j in 0..i
        new_row.push(tri[i + 1][j] + tri[i + 1][j + 1])
      end
      new_row.unshift(1)
      new_row.push(1)
      tri.push(new_row)
    end
    return tri
  end
end

# @param {Integer} row_index
# @return {Integer[]}
def get_row(row_index)
  row = [1, 1]
  if row_index <= 1
    return row[0, row_index + 1]
  else
    for i in 0...row_index - 1
      row = (0..i).to_a.map { |j| row[j] + row[j + 1] }
      row.unshift(1)
      row.push(1)
    end
    return row
  end
end

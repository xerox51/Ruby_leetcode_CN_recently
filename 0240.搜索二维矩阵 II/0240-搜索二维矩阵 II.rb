# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}
def search_matrix(matrix, target)
  for row in matrix
    idx = row.bsearch_index { |item| item >= target }
    if idx != nil && idx < row.length && row[idx] == target
      return true
    end
  end
  return false
end

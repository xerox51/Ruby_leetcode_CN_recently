# @param {Integer} label
# @return {Integer[]}
def path_in_zig_zag_tree(label)
  row, rowstart = 1, 1
  while rowstart * 2 <= label
    row += 1
    rowstart *= 2
  end
  if row % 2 == 0
    label = getreverse(label, row)
  end
  path = []
  while row > 0
    if row % 2 == 0
      path.push(getreverse(label, row))
    else
      path.push(label)
    end
    row -= 1
    label >>= 1
  end
  path.reverse!
  path
end

def getreverse(label, row)
  (1 << row - 1) + (1 << row) - 1 - label
end

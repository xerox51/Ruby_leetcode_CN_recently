# @param {Integer[][]} grid
# @return {Integer}
def find_champion(grid)
  temp = (0..grid.length - 1).to_h { |item| [item, 0] }
  for i in 0...grid.length
    for j in 0...grid[0].length
      if i != j and grid[i][j] == 1
        temp[j] = 1
      end
    end
  end
  temp.key(0)
end

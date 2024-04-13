# @param {Integer[][]} grid
# @return {Integer}
def max_moves(grid)
  m, n = grid.length, grid[0].length
  can_move = Array.new(m) { Array.new(n, false) }
  max_move = 0
  for j in 1...n
    for i in 0...m
      [-1, 0, 1].each do |p|
        if i + p < 0 || i + p >= m
          next
        end
        if grid[i][j] > grid[i + p][j - 1] && (j == 1 || can_move[i + p][j - 1])
          can_move[i][j] = true
          max_move = j
          break
        end
      end
    end
  end
  max_move
end

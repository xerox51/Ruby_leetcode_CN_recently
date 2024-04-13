# @param {Integer[][]} board
# @return {Integer}
def snakes_and_ladders(board)
  @n = board.length
  vis = Set.new
  q = [[1, 0]]
  while q.length > 0
    idx, step = q.shift
    for i in 1..6
      idx_nxt = idx + i
      if idx_nxt > @n * @n
        break
      end
      x_nxt, y_nxt = id2rc(idx_nxt)
      if board[x_nxt][y_nxt] > 0
        idx_nxt = board[x_nxt][y_nxt]
      end
      if idx_nxt == @n * @n
        return step + 1
      end
      unless vis.include?(idx_nxt)
        vis.add(idx_nxt)
        q.push([idx_nxt, step + 1])
      end
    end
  end
  return -1
end

def id2rc(idx)
  r, c = (idx - 1) / @n, (idx - 1) % @n
  if r % 2 == 1
    c = @n - 1 - c
  end
  return @n - 1 - r, c
end

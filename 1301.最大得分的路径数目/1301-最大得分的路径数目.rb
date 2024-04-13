# @param {String[]} board
# @return {Integer[]}
def paths_with_max_score(board)
  n = board.length
  dp = Array.new(n) { Array.new(n, [-1, 0]) }
  dp[n - 1][n - 1] = [0, 1]
  (n - 1).downto(0) do |i|
    (n - 1).downto(0) do |j|
      if (!(i == n - 1 && j == n - 1)) && board[i][j] != "X"
        update(i, j, i + 1, j, dp, n)
        update(i, j, i, j + 1, dp, n)
        update(i, j, i + 1, j + 1, dp, n)
        if dp[i][j][0] != -1
          if board[i][j] == "E"
            dp[i][j][0] += 0
          else
            dp[i][j][0] += (board[i][j]).ord - 48
          end
        end
      end
    end
  end
  if dp[0][0][0] != -1
    return [dp[0][0][0], dp[0][0][1] % (10 ** 9 + 7)]
  else
    return [0, 0]
  end
end

def update(x, y, u, v, dp, n)
  if u >= n || v >= n || dp[u][v][0] == -1
    return
  end
  if dp[u][v][0] > dp[x][y][0]
    dp[x][y] = dp[u][v].dup
  elsif dp[u][v][0] == dp[x][y][0]
    dp[x][y][1] += dp[u][v][1]
  end
end

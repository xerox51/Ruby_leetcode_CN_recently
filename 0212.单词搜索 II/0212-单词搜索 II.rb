# @param {Character[][]} board
# @param {String[]} words
# @return {String[]}
def find_words(board, words)
  result = []
  indexs = Hash.new { |h, k| h[k] = [] }
  row, col = board.length, board[0].length
  for i in 0...row
    for j in 0...col
      indexs[board[i][j]] << [i, j]
    end
  end
  words.each do |word|
    flag = true
    for i in 0...word.length
      if indexs[word[i]].length == 0
        flag = false
        break
      end
    end
    unless flag
      next
    end
    new_word = word.dup
    if word.size() > 5 && word[0] == word[1] && word[1] == word[2] && word[2] == word[3]
      new_word.reverse!
    end
    if indexs[new_word[0]].length > 0
      for r, c in indexs[new_word[0]]
        if dfsfindword(board, r, c, new_word, 0)
          result.push(word)
          break
        end
      end
    end
  end
  result
end

def dfsfindword(board, r, c, word, index)
  if index == word.length - 1
    return true
  end
  temp = board[r][c]
  index += 1
  ch = word[index]
  board[r][c] = 0
  new_r, new_c = 0, 0
  new_r = r - 1
  if new_r >= 0 && board[new_r][c] == ch
    if dfsfindword(board, new_r, c, word, index)
      board[r][c] = temp
      return true
    end
  end
  new_r = r + 1
  if new_r < board.length && board[new_r][c] == ch
    if dfsfindword(board, new_r, c, word, index)
      board[r][c] = temp
      return true
    end
  end
  new_c = c - 1
  if new_c >= 0 && board[r][new_c] == ch
    if dfsfindword(board, r, new_c, word, index)
      board[r][c] = temp
      return true
    end
  end
  new_c = c + 1
  if new_c < board[0].length && board[r][new_c] == ch
    if dfsfindword(board, r, new_c, word, index)
      board[r][c] = temp
      return true
    end
  end
  board[r][c] = temp
  return false
end

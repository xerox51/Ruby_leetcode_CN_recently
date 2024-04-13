# @param {Integer[][]} matrix
# @return {Integer[][]}
def modified_matrix(matrix)
  answer = matrix.dup
  for i in 0...answer[0].length
    ans = answer[0][i]
    for j in 0...answer.length
      ans = [ans, answer[j][i]].max
    end
    for l in 0...answer.length
      if answer[l][i] == -1
        answer[l][i] = ans
      end
    end
  end
  answer
end

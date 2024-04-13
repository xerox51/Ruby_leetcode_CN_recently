# @param {Integer[][]} triangle
# @return {Integer}
def minimum_total(triangle)
  if triangle.length == 1
    return triangle[0][0]
  end
  dp = []
  for i in 0...triangle.length
    tmp = []
    for j in 0...triangle[i].length
      tmp.push(0)
    end
    dp.push(tmp)
  end
  dp[0][0] = triangle[0][0]
  for i in 1...triangle.length
    dp[i][0] = dp[i - 1][0] + triangle[i][0]
  end
  for i in 1...triangle.length
    dp[i][triangle[i].length - 1] = dp[i - 1][triangle[i - 1].length - 1] + triangle[i][triangle[i].length - 1]
  end
  for i in 1...triangle.length
    for j in 1...triangle[i].length - 1
      dp[i][j] = [dp[i - 1][j], dp[i - 1][j - 1]].min + triangle[i][j]
    end
  end
  dp[triangle.length - 1].min
end

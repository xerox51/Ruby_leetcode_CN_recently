# @param {Integer} n
# @param {Integer} k
# @param {Integer} budget
# @param {Integer[][]} composition
# @param {Integer[]} stock
# @param {Integer[]} cost
# @return {Integer}
def max_number_of_alloys(n, k, budget, composition, stock, cost)
  left, right, ans = 1, 2 * 10 ** 8, 0
  while left <= right
    mid = (left + right) / 2
    valid = false
    for i in 0...k
      spend = 0
      for j in 0...composition[i].length
        spend += [0, composition[i][j] * mid - stock[j]].max * cost[j]
      end
      if spend <= budget
        valid = true
        break
      end
    end
    if valid
      ans = mid
      left = mid + 1
    else
      right = mid - 1
    end
  end
  ans
end

# @param {Integer[]} nums
# @return {Boolean}
def can_partition(nums)
  len = nums.length
  total = nums.sum
  return false if total & 1 == 1
  target = total / 2
  dp = Array.new(len) { Array.new(target + 1, false) }
  if nums[0] <= target
    dp[0][nums[0]] = true
  end
  for i in 1...len
    for j in 0..target
      dp[i][j] = dp[i - 1][j]
      if nums[i] == j
        dp[i][j] = true
        next
      end
      if nums[i] < j
        dp[i][j] = dp[i - 1][j] || dp[i - 1][j - nums[i]]
      end
    end
  end
  dp[len - 1][target]
end

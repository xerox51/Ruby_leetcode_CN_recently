# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
  if nums.length == 1
    return nums[0]
  elsif nums.length == 2
    return nums.max
  else
    n = nums.length
    dp = Array.new(n + 1, 0)
    for i in 1..n
      dp[i] = nums[i - 1]
    end
    for i in 2..n
      dp[i] = dp[i] + dp[0, i - 1].max
    end
    dp.max
  end
end

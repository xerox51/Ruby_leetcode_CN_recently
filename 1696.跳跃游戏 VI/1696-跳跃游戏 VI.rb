# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def max_result(nums, k)
  n = nums.length
  dp = Array.new(n, 0)
  dp[0] = nums[0]
  queue = [0]
  for i in 1...n
    while queue.length > 0 && queue[0] < i - k
      queue.shift
    end
    dp[i] = dp[queue[0]] + nums[i]
    while queue.length > 0 && dp[queue[-1]] <= dp[i]
      queue.pop
    end
    queue.push(i)
  end
  dp[n - 1]
end

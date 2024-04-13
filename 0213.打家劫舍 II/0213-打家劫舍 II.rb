# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
  if nums.length == 1
    return nums[0]
  elsif nums.length == 2
    return nums.max
  else
    n = nums.length
    l = n - 3
    dp1 = Array.new(l + 1, 0)
    for i in 1..l
      dp1[i] = nums[i + 1]
    end
    for i in 2..l
      dp1[i] = dp1[i] + dp1[0, i - 1].max
    end
    x1 = dp1.max + nums[0]
    l = n - 1
    dp2 = Array.new(l + 1, 0)
    for i in 1..l
      dp2[i] = nums[i]
    end
    for i in 2..l
      dp2[i] = dp2[i] + dp2[0, i - 1].max
    end
    x2 = dp2.max
    [x1, x2].max
  end
end

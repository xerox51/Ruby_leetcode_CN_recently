# @param {Integer[]} nums
# @return {Integer}
def number_of_arithmetic_slices(nums)
  n = nums.length
  if n == 1
    return 0
  end
  d, t = nums[0] - nums[1], 0
  ans = 0
  for i in 2...n
    if nums[i - 1] - nums[i] == d
      t += 1
    else
      d = nums[i - 1] - nums[i]
      t = 0
    end
    ans += t
  end
  ans
end

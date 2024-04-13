# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def smallest_range_ii(nums, k)
  n = nums.length
  nums.sort!
  ans = nums[n - 1] - nums[0]
  for i in 0...nums.length - 1
    a = nums[i]
    b = nums[i + 1]
    high = [nums[n - 1] - k, a + k].max
    low = [nums[0] + k, b - k].min
    ans = [ans, high - low].min
  end
  ans
end

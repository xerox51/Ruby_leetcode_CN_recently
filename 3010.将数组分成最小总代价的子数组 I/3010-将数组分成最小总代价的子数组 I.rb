# @param {Integer[]} nums
# @return {Integer}
def minimum_cost(nums)
  a = nums[0]
  b = nums.min
  c = nums.sort[0, 3]
  if c.include?(a)
    return c.sum
  else
    return c[0, 2].sum + a
  end
end

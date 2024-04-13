# @param {Integer[]} nums
# @return {Boolean}
def valid_partition(nums)
  n = nums.length
  f = Array.new(n + 1, false)
  f[0] = true
  nums.each_with_index do |item, index|
    if (index > 0 && f[index - 1] && item == nums[index - 1]) || (index > 1 && f[index - 2] && (item == nums[index - 1] && item == nums[index - 2] || item == nums[index - 1] + 1 && item == nums[index - 2] + 2))
      f[index + 1] = true
    end
  end
  f[n]
end

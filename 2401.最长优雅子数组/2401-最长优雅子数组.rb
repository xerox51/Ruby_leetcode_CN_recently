# @param {Integer[]} nums
# @return {Integer}
def longest_nice_subarray(nums)
  ans, left, or_ = 0, 0, 0
  for i in 0...nums.length
    while or_ & nums[i] > 0
      or_ ^= nums[left]
      left += 1
    end
    or_ |= nums[i]
    ans = [ans, i - left + 1].max
  end
  ans
end

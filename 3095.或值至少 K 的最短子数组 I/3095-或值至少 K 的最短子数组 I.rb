# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def minimum_subarray_length(nums, k)
  ans = nums.length + 1
  for i in 0...nums.length
    (nums.length - i).downto(1) do |j|
      if nums[i, j].reduce(:|) >= k
        ans = [ans, j].min
      end
    end
  end
  if ans == nums.length + 1
    return -1
  else
    return ans
  end
end

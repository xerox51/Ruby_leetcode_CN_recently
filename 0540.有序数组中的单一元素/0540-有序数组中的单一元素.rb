# @param {Integer[]} nums
# @return {Integer}
def single_non_duplicate(nums)
  if nums.length == 1
    return nums[0]
  end
  if nums[0] != nums[1]
    return nums[0]
  end
  if nums[-1] > nums[-2]
    return nums[-1]
  end
  (0...nums.length).step(2) do |i|
    if nums[i] > nums[i - 1] && nums[i] < nums[i + 1]
      return nums[i]
    end
  end
end

# @param {Integer[]} nums
# @return {String}
def triangle_type(nums)
  nums.sort!
  if nums[0] + nums[1] <= nums[2]
    return "none"
  end
  if nums.uniq.length == 1
    return "equilateral"
  elsif nums.uniq.length == 2
    return "isosceles"
  else
    return "scalene"
  end
end

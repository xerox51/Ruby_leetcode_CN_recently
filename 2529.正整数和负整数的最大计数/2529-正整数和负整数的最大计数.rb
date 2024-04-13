# @param {Integer[]} nums
# @return {Integer}
def maximum_count(nums)
  a = nums.select { |item| item > 0 }
  b = nums.select { |item| item < 0 }
  if a.size == 0 and b.size == 0
    return 0
  elsif a.size > 0 and b.size == 0
    return a.size
  elsif a.size == 0 and b.size > 0
    return b.size
  else
    return [a.size, b.size].max
  end
end

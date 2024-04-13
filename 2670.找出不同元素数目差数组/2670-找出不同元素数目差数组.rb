# @param {Integer[]} nums
# @return {Integer[]}
def distinct_difference_array(nums)
  ans = []
  n = nums.length
  for i in 1...nums.length
    a = nums[0, i].uniq.length
    b = nums[i, n - i].uniq.length
    ans.push(a - b)
  end
  a = nums.uniq.length
  ans.push(a - 0)
  ans
end

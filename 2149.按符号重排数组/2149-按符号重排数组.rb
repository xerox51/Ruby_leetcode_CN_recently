# @param {Integer[]} nums
# @return {Integer[]}
def rearrange_array(nums)
  a = nums.select { |num| num > 0 }
  b = nums.reject { |num| num > 0 }
  len = a.length
  nums.clear
  for i in 0...a.length
    nums.push(a[i])
    nums.push(b[i])
  end
  nums
end

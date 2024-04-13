# @param {Integer[]} nums
# @return {Integer[]}
def result_array(nums)
  a = [nums.shift]
  b = [nums.shift]
  while nums.length > 0
    if a[-1] > b[-1]
      a.push(nums.shift)
    else
      b.push(nums.shift)
    end
  end
  a.concat(b)
end

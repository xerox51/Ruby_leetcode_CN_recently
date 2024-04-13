# @param {Integer[]} nums
# @return {Integer[]}
def majority_element(nums)
  n = nums.length
  h = {}
  k = n / 3
  for i in 0...n
    if h.has_key?(nums[i])
      h[nums[i]] += 1
    else
      h[nums[i]] = 1
    end
  end
  ans = []
  h.each_pair do |key, value|
    if value > k
      ans.push(key)
    end
  end
  ans
end

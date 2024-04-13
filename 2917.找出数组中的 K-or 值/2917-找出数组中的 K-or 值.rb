# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def find_k_or(nums, k)
  ans = []
  n = nums.length
  if k == n
    return nums.inject { |result, element| result & element }
  end
  if k == 1
    return nums.inject { |result, element| result | element }
  end
  for i in 0..31
    cnt = 0
    for j in 0...n
      if nums[j] & 2 ** i == 2 ** i
        cnt += 1
      end
    end
    if cnt >= k
      ans.push(2 ** i)
    end
  end
  ans.sum
end

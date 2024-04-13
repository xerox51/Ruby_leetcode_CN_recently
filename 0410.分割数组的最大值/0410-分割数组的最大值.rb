# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def split_array(nums, k)
  right = nums.sum
  left = [nums.max - 1, (right - 1) / k].max
  while left + 1 < right
    mid = (left + right) / 2
    if check(mid, nums, k)
      right = mid
    else
      left = mid
    end
  end
  right
end

def check(mx, nums, k)
  cnt = 1
  s = 0
  for x in nums
    if s + x <= mx
      s += x
    else
      if cnt == k
        return false
      end
      cnt += 1
      s = x
    end
  end
  return true
end

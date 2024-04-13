# @param {Integer[]} nums
# @return {Integer}
def length_of_lis(nums)
  len, n = 1, nums.length
  if n == 0
    return 0
  end
  d = Array.new(n + 1, 0)
  d[len] = nums[0]
  for i in 1...n
    if nums[i] > d[len]
      len += 1
      d[len] = nums[i]
    else
      l, r, pos = 1, len, 0
      while l <= r
        mid = (l + r) >> 1
        if d[mid] < nums[i]
          pos = mid
          l = mid + 1
        else
          r = mid - 1
        end
      end
      d[pos + 1] = nums[i]
    end
  end
  len
end

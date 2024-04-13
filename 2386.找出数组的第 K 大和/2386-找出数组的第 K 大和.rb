# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def k_sum(nums, k)
  @n = nums.length
  @k = k
  total, total2 = 0, 0
  for i in 0...@n
    if nums[i] >= 0
      total += nums[i]
    else
      nums[i] = -nums[i]
    end
    total2 += nums[i]
  end
  nums.sort!
  left, right = 0, total2
  while left <= right
    mid = (left + right) / 2
    @cnt = 0
    dfs(0, 0, mid, nums)
    if @cnt >= k - 1
      right = mid - 1
    else
      left = mid + 1
    end
  end
  total - left
end

def dfs(i, t, limit, nums)
  if i == @n || @cnt >= @k - 1 || t + nums[i] > limit
    return
  end
  @cnt += 1
  dfs(i + 1, t + nums[i], limit, nums)
  dfs(i + 1, t, limit, nums)
end

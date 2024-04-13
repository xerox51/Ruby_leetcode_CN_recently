# @param {Integer[]} nums
# @param {Integer} index_diff
# @param {Integer} value_diff
# @return {Boolean}
def contains_nearby_almost_duplicate(nums, k, t)
  map = {}
  @size = t + 1
  for i in 0...nums.length
    idx = getidx(nums[i])
    if map.include?(idx)
      return true
    end
    l, r = idx - 1, idx + 1
    if map.include?(l) && (nums[i] - map[l]).abs <= t
      return true
    end
    if map.include?(r) && (nums[i] - map[r]).abs <= t
      return true
    end
    map[idx] = nums[i]
    if i >= k
      map.delete(getidx(nums[i - k]))
    end
  end
  false
end

def getidx(u)
  if u < 0
    return (u + 1) / @size - 1
  else
    return u / @size
  end
end

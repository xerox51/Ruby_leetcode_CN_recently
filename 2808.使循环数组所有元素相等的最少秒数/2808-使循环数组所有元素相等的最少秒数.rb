# @param {Integer[]} nums
# @return {Integer}
def minimum_seconds(nums)
  mp = {}
  res, n = nums.length, nums.length
  for i in 0...n
    if mp.has_key?(nums[i])
      mp[nums[i]].push(i)
    else
      mp[nums[i]] = [i]
    end
  end
  for pos in mp.values
    mx = pos[0] + n - pos[-1]
    for i in 0...pos.length
      mx = [mx, pos[i] - pos[i - 1]].max
    end
    res = [res, mx / 2].min
  end
  res
end

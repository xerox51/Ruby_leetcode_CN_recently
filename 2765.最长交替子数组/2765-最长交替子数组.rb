# @param {Integer[]} nums
# @return {Integer}
def alternating_subarray(nums)
  ans = 0
  for i in 0...nums.length - 1
    ans = [ans, judge(i, nums)].max
    if ans >= nums.length - i
      break
    end
  end
  if ans == 0
    return -1
  else
    return ans
  end
end

def judge(i, nums)
  if nums[i + 1] - nums[i] != 1
    return 0
  else
    s = []
    for j in 0..51
      if nums[i, 2 * j] == s
        s.concat([nums[i], nums[i + 1]])
      else
        if nums[i + (j - 1) * 2] != nums[i]
          return 2 * (j - 1)
        else
          return (j - 1) * 2 + 1
        end
      end
    end
  end
end

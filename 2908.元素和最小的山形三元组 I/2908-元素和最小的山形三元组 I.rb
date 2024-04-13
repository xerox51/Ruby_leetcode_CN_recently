# @param {Integer[]} nums
# @return {Integer}
def minimum_sum(nums)
  total = 1.0 / 0.0
  for i in 0...nums.length
    for j in 0...nums.length
      for k in 0...nums.length
        if i < j and j < k and i < k
          if nums[i] < nums[j] && nums[k] < nums[j]
            total = [total, nums[i] + nums[j] + nums[k]].min
          end
        end
      end
    end
  end
  if total.to_f.infinite?
    return -1
  else
    return total
  end
end

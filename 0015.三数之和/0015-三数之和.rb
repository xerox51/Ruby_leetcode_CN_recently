# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  n = nums.length
  if n < 3
    return []
  end
  nums.sort!
  ans = []
  for i in 0...n-2
    x = nums[i]
    if i > 0 && x == nums[i-1]
      next
    end
    if x + nums[i+1] + nums[i+2] > 0
      break
    end
    if x + nums[-2] + nums[-1] < 0
      next
    end
    j = i+1
    k = n-1
    while j < k
      if x + nums[j] + nums[k] > 0
        k -= 1
      elsif x + nums[j] + nums[k] < 0
        j += 1
      else
        ans.push([x,nums[j],nums[k]])
        j += 1
        while j < k && nums[j] == nums[j-1]
          j += 1
        end
        k -= 1
        while k > j && nums[k] == nums[k+1]
          k -= 1
        end
      end
    end
  end
  ans  
end
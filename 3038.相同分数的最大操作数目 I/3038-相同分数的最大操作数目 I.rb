# @param {Integer[]} nums
# @return {Integer}
def max_operations(nums)
  tmp = nums[0, 2].sum
  ans = 1
  n = nums.length
  if n % 2 == 0
    (2..n).step(2) do |i|
      if nums[i, 2].sum == tmp
        ans += 1
      else
        break
      end
    end
    return ans
  else
    nums.pop
    m = n - 1
    (2..m).step(2) do |i|
      if nums[i, 2].sum == tmp
        ans += 1
      else
        break
      end
    end
    return ans
  end
end

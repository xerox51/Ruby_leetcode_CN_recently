# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def wiggle_sort(nums)
  nums.sort!
  len = nums.length
  ans = Array.new(len, 0)
  for i in 0...len
    if i % 2 == 1
      ans[i] = nums[i / 2]
    else
      ans[i] = nums[i / 2 + len / 2]
    end
  end
  nums.clear
  nums.concat(ans)
end

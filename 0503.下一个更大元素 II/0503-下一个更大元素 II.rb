# @param {Integer[]} nums
# @return {Integer[]}
def next_greater_elements(nums)
  n = nums.length
  ret = Array.new(n, -1)
  stk = []
  for i in 0...2 * n - 1
    while stk.length > 0 && nums[stk[-1]] < nums[i % n]
      ret[stk.pop] = nums[i % n]
    end
    stk.push(i % n)
  end
  ret
end

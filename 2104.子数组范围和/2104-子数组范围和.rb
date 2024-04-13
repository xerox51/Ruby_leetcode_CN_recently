# @param {Integer[]} nums
# @return {Integer}
def sub_array_ranges(nums)
  n = nums.length
  minleft, maxleft = Array.new(n, 0), Array.new(n, 0)
  minstack, maxstack = [], []
  for i in 0...n
    while minstack.length > 0 && nums[minstack[-1]] > nums[i]
      minstack.pop
    end
    if minstack.length > 0
      minleft[i] = minstack[-1]
    else
      minleft[i] = -1
    end
    minstack.push(i)
    while maxstack.length > 0 && nums[maxstack[-1]] <= nums[i]
      maxstack.pop
    end
    if maxstack.length > 0
      maxleft[i] = maxstack[-1]
    else
      maxleft[i] = -1
    end
    maxstack.push(i)
  end

  minright, maxright = Array.new(n, 0), Array.new(n, 0)
  minstack, maxstack = [], []
  (n - 1).downto(0) do |i|
    while minstack.length > 0 && nums[minstack[-1]] >= nums[i]
      minstack.pop
    end
    if minstack.length > 0
      minright[i] = minstack[-1]
    else
      minright[i] = n
    end
    minstack.push(i)
    while maxstack.length > 0 && nums[maxstack[-1]] < nums[i]
      maxstack.pop
    end
    if maxstack.length > 0
      maxright[i] = maxstack[-1]
    else
      maxright[i] = n
    end
    maxstack.push(i)
  end
  summax, summin = 0, 0
  for i in 0...n
    summax += (maxright[i] - i) * (i - maxleft[i]) * nums[i]
    summin += (minright[i] - i) * (i - minleft[i]) * nums[i]
  end
  summax - summin
end

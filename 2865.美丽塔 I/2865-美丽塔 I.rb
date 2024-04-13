# @param {Integer[]} max_heights
# @return {Integer}
def maximum_sum_of_heights(max_heights)
  n = max_heights.length
  res = 0
  prefix, suffix = Array.new(n, 0), Array.new(n, 0)
  stack1, stack2 = [], []
  for i in 0...n
    while stack1.length > 0 && max_heights[i] < max_heights[stack1[-1]]
      stack1.pop
    end
    if stack1.length > 0
      prefix[i] = prefix[stack1[-1]] + (i - stack1[-1]) * max_heights[i]
    else
      prefix[i] = (i + 1) * max_heights[i]
    end
    stack1.push(i)
  end
  (n - 1).downto(0) do |i|
    while stack2.length > 0 && max_heights[i] < max_heights[stack2[-1]]
      stack2.pop
    end
    if stack2.length > 0
      suffix[i] = suffix[stack2[-1]] + (stack2[-1] - i) * max_heights[i]
    else
      suffix[i] = (n - i) * max_heights[i]
    end
    stack2.push(i)
    res = [res, prefix[i] + suffix[i] - max_heights[i]].max
  end
  res
end

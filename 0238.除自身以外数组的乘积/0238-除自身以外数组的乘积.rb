# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
  a = nums.select { |item| item != 0 }
  b = nums.select { |item| item == 0 }
  ans = []
  if b.length == 0
    total = a.reduce(1, &:*)
    for i in 0...nums.length
      ans.push(total / nums[i])
    end
    return ans
  elsif b.length == 1
    total = a.reduce(1, &:*)
    for i in 0...nums.length
      if nums[i] != 0
        ans.push(0)
      else
        ans.push(total)
      end
    end
    return ans
  else
    return Array.new(nums.length, 0)
  end
end

# @param {Integer[]} nums
# @return {Integer[][]}
def subsets(nums)
  ans = []
  l = nums.length
  for i in 0..l
    nums.combination(i) do |combination|
      ans.push(combination)
    end
  end
  ans
end

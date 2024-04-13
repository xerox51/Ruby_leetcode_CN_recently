# @param {Integer[]} nums
# @return {Integer}
def partition_disjoint(nums)
  n = nums.length
  minv = Array.new(n + 10, 0)
  minv[n - 1] = nums[n - 1]
  (n - 2).downto(0) do |i|
    minv[i] = [minv[i + 1], nums[i]].min
  end
  maxv = 0
  for i in 0...n - 1
    maxv = [maxv, nums[i]].max
    if maxv <= minv[i + 1]
      return i + 1
    end
  end
  -1
end

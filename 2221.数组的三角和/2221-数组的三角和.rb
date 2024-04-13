# @param {Integer[]} nums
# @return {Integer}
def triangular_sum(nums)
  len = nums.length
  (len - 1).downto(1) do |i|
    nums = (0...i).to_a.map { |index| (nums[index] + nums[index + 1]) % 10 }
  end
  nums[0]
end

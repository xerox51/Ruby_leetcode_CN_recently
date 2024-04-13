# @param {Integer[]} nums
# @param {Integer} pivot
# @return {Integer[]}
def pivot_array(nums, pivot)
  a = nums.select { |num| num < pivot }
  b = nums.select { |num| num > pivot }
  c = nums.select { |num| num == pivot }
  a.concat(c).concat(b)
end

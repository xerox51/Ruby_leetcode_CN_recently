# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def sum_indices_with_k_set_bits(nums, k)
  ans = []
  nums.each_with_index do |item, index|
    if index.to_s(2).count("1") == k
      ans.push(item)
    end
  end
  ans.sum
end

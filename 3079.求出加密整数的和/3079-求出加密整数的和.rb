# @param {Integer[]} nums
# @return {Integer}
def sum_of_encrypted_int(nums)
  nums.map { |it| it.to_s.each_char.to_a.map { |i| it.to_s.each_char.to_a.max }.join.to_i }.sum
end

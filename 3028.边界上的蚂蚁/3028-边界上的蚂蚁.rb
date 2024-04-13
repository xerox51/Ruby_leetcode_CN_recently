# @param {Integer[]} nums
# @return {Integer}
def return_to_boundary_count(nums)
  ans = 0
  tmp = 0
  nums.each do |num|
    tmp += num
    if tmp == 0
      ans += 1
    end
  end
  ans
end

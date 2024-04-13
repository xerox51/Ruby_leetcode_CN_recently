# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  a, b = 0, 0
  for num in nums
    b = ~a & (b ^ num)
    a = ~b & (a ^ num)
  end
  b
end

# @param {Integer[]} nums
# @return {Integer[][]}
def find_matrix(nums)
  tmp = []
  a = nums.uniq
  b = nums.length
  while b > 0
    t = []
    for it in a
      t.push(it)
      nums.delete_at(nums.index(it))
    end
    tmp.push(t)
    b = nums.length
    a = nums.uniq
  end
  tmp
end

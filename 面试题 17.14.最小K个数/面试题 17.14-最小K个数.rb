# @param {Integer[]} arr
# @param {Integer} k
# @return {Integer[]}
def smallest_k(arr, k)
  arr.sort[0, k]
end

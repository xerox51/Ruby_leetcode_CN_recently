# @param {Integer} n
# @param {Integer} k
# @return {Integer[][]}
def combine(n, k)
  ans = []
  a = (1..n).to_a
  a.combination(k) do |combination|
    ans.push(combination)
  end
  ans
end

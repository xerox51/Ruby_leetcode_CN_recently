# @param {Integer[]} group_sizes
# @return {Integer[][]}
def group_the_people(group_sizes)
  h = {}
  group_sizes.each_with_index do |it, i|
    if h.has_key?(it)
      h[it].push(i)
    else
      h[it] = [i]
    end
  end
  ans = []
  h.each_pair do |k, v|
    if v.length == k
      ans.push(v)
    else
      v.each_slice(k) do |i|
        ans.push(i)
      end
    end
  end
  ans
end

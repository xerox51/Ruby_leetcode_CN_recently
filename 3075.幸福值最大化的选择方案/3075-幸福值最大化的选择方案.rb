# @param {Integer[]} happiness
# @param {Integer} k
# @return {Integer}
def maximum_happiness_sum(happiness, k)
  happiness.sort!
  len = happiness.length
  num = 0
  for i in len - k...len
    happiness[i] = [0, happiness[i] - (len - i - 1)].max
  end
  j = 0
  while j < k
    num += happiness.pop
    j += 1
  end
  num
end

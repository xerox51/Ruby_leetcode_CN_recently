# @param {Integer[][]} ranges
# @return {Integer}
def count_ways(ranges)
  ranges.sort_by! { |item| [item[0], item[1]] }
  cnt = 0
  r = -1
  ranges.each do |item|
    if item[0] > r
      cnt += 1
    end
    r = [r, item[1]].max
  end
  m = 10 ** 9 + 7
  ans = 1
  ans = 2 ** cnt
  ans % m
end

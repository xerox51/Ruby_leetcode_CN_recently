# @param {Integer[][]} wall
# @return {Integer}
def least_bricks(wall)
  cnt = {}
  for widths in wall
    n = widths.length
    sum = 0
    for i in 0...n - 1
      sum += widths[i]
      if cnt.has_key?(sum)
        cnt[sum] = cnt[sum] + 1
      else
        cnt[sum] = 1
      end
    end
  end
  maxcnt = 0
  cnt.each_pair do |k, v|
    maxcnt = [maxcnt, v].max
  end
  wall.length - maxcnt
end

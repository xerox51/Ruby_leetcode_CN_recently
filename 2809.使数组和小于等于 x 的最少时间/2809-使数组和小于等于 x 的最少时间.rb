# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @param {Integer} x
# @return {Integer}
def minimum_time(nums1, nums2, x)
  paris = nums1.zip(nums2).sort_by { |item| item[1] }
  n = paris.length
  f = Array.new(n + 1, 0)
  for i in 0...n
    (i + 1).downto(1) do |j|
      f[j] = [f[j], f[j - 1] + paris[i][0] + paris[i][1] * j].max
    end
  end
  s1 = nums1.sum
  s2 = nums2.sum
  for i in 0...f.length
    if s1 + s2 * i - f[i] <= x
      return i
    end
  end
  return -1
end

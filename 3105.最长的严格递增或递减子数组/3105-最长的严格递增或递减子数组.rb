# @param {Integer[]} nums
# @return {Integer}
def longest_monotonic_subarray(nums)
  ans = 1
  for i in 0...nums.length
    (nums.length - i).downto(1) do |j|
      tmp = nums[i, j].uniq
      if tmp != nums[i, j]
        next
      else
        if tmp.sort == tmp
          ans = [tmp.length, ans].max
          next
        end
        if tmp.sort.reverse == tmp
          ans = [tmp.length, ans].max
        end
      end
    end
  end
  ans
end

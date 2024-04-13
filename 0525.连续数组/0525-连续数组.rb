# @param {Integer[]} nums
# @return {Integer}
def find_max_length(nums)
  maxlength = 0
  map = {}
  counter = 0
  map[counter] = -1
  n = nums.length
  for i in 0...n
    num = nums[i]
    if num == 1
      counter += 1
    else
      counter -= 1
    end
    if map.has_key?(counter)
      previndex = map[counter]
      maxlength = [maxlength, i - previndex].max
    else
      map[counter] = i
    end
  end
  maxlength
end

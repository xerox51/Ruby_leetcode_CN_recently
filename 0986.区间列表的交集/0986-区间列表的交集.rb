# @param {Integer[][]} first_list
# @param {Integer[][]} second_list
# @return {Integer[][]}
def interval_intersection(first_list, second_list)
  ans = []
  i, j = 0, 0
  while i < first_list.length && j < second_list.length
    lo = [first_list[i][0], second_list[j][0]].max
    hi = [first_list[i][1], second_list[j][1]].min
    if lo <= hi
      ans.push([lo, hi])
    end
    if first_list[i][1] < second_list[j][1]
      i += 1
    else
      j += 1
    end
  end
  ans
end

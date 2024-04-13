# @param {Integer[]} ratings
# @return {Integer}
def candy(ratings)
  n = ratings.length
  ret = 1
  inc, dec, pre = 1, 0, 1
  for i in 1...n
    if ratings[i] >= ratings[i - 1]
      dec = 0
      if ratings[i] == ratings[i - 1]
        pre = 1
      else
        pre = pre + 1
      end
      ret += pre
      inc = pre
    else
      dec += 1
      if dec == inc
        dec += 1
      end
      ret += dec
      pre = 1
    end
  end
  ret
end

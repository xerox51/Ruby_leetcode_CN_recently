# @param {Integer} num_bottles
# @param {Integer} num_exchange
# @return {Integer}
def max_bottles_drunk(num_bottles, num_exchange)
  ans = num_bottles
  n = num_bottles
  if num_bottles < num_exchange
    return num_bottles
  end
  while true
    n -= num_exchange
    if n < 0
      break
    else
      n += 1
      ans += 1
      num_exchange += 1
    end
  end
  ans
end

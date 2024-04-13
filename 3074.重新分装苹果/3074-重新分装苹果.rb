# @param {Integer[]} apple
# @param {Integer[]} capacity
# @return {Integer}
def minimum_boxes(apple, capacity)
  total = apple.sum
  capacity.sort!
  c = capacity.reverse
  i = 0
  while i < capacity.length
    if total <= 0
      break
    end
    total -= c[i]
    i += 1
  end
  i
end

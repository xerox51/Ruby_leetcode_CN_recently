# @param {Integer} memory1
# @param {Integer} memory2
# @return {Integer[]}
def mem_leak(memory1, memory2)
  i = 1
  while true
    if i > [memory2, memory1].max
      return [i, memory1, memory2]
    end
    if memory2 > memory1
      memory2 -= i
    else
      memory1 -= i
    end
    i += 1
  end
end

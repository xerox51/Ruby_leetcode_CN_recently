# @param {Integer} n
# @return {Integer}
def clumsy(n)
  stack = []
  stack.push(n)
  n -= 1
  index = 0
  while n > 0
    if index % 4 == 0
      stack[stack.length - 1] *= n
    elsif index % 4 == 1
      stack[stack.length - 1] = (stack[stack.length - 1] / n.to_f).to_i
    elsif index % 4 == 2
      stack.push(n)
    else
      stack.push(-n)
    end
    index += 1
    n -= 1
  end
  stack.sum
end

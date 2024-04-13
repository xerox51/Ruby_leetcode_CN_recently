# @param {String} equation
# @return {String}
def solve_equation(equation)
  factor, val = 0, 0
  i, n, sign = 0, equation.length, 1
  while i < n
    if equation[i] == "="
      sign = -1
      i += 1
      next
    end
    s = sign
    if equation[i] == "+"
      i += 1
    elsif equation[i] == "-"
      s = -s
      i += 1
    end
    num, valid = 0, false
    while i < n && equation[i].ord >= "0".ord && equation[i].ord <= "9".ord
      valid = true
      num = num * 10 + equation[i].to_i
      i += 1
    end
    if i < n && equation[i] == "x"
      if valid
        factor += s * num
      else
        factor += s
      end
      i += 1
    else
      val += s * num
    end
  end
  if factor == 0
    if val == 0
      return "Infinite solutions"
    else
      return "No solution"
    end
  end
  return "x=" + (-val / factor).to_s
end

# @param {String} expression
# @return {String}
def fraction_addition(expression)
  x, y = 0, 1
  i, n = 0, expression.length
  while i < n
    x1, sign = 0, 1
    if expression[i] == "-" or expression[i] == "+"
      if expression[i] == "-"
        sign = -1
      end
      i += 1
    end
    while i < n && expression[i].ord >= "0".ord && expression[i].ord <= "9".ord
      x1 = x1 * 10 + expression[i].to_i
      i += 1
    end
    x1 = sign * x1
    i += 1
    y1 = 0
    while i < n && expression[i].ord >= "0".ord && expression[i].ord <= "9".ord
      y1 = y1 * 10 + expression[i].to_i
      i += 1
    end
    x = x * y1 + x1 * y
    y *= y1
  end
  if x == 0
    return "0/1"
  end
  g = x.abs.gcd(y)
  return (x / g).to_s + "/" + (y / g).to_s
end

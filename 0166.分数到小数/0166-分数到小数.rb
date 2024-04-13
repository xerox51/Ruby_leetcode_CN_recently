# @param {Integer} numerator
# @param {Integer} denominator
# @return {String}
def fraction_to_decimal(numerator, denominator)
  a, b = numerator, denominator
  if a % b == 0
    return (a / b).to_s
  end
  sb = ""
  if a * b < 0
    sb << "-"
  end
  a = a.abs
  b = b.abs
  sb << (a / b).to_s + "."
  a %= b
  map = {}
  while a != 0
    map[a] = sb.length
    a *= 10
    sb << (a / b).to_s
    a %= b
    if map.has_key?(a)
      u = map[a]
      return sb[0, u] + "(" + sb[u, sb.length - u] + ")"
    end
  end
  sb.to_s
end

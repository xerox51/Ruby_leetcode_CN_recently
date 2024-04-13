# @param {Integer[][]} points
# @return {Integer}
def max_points(points)
  n, ans = points.length, 1
  for i in 0...n
    mapping = {}
    maxv = 0
    for j in i + 1...n
      x1, y1 = points[i]
      x2, y2 = points[j]
      a, b = x1 - x2, y1 - y2
      k = gcd(a, b)
      key = (a / k).to_s + "_" + (b / k).to_s
      if mapping.has_key?(key)
        mapping[key] = mapping[key] + 1
      else
        mapping[key] = 1
      end
      maxv = [maxv, mapping[key]].max
    end
    ans = [ans, maxv + 1].max
  end
  ans
end

def gcd(a, b)
  if b == 0
    return a
  else
    return gcd(b, a % b)
  end
end

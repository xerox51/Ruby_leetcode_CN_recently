# @param {Integer[][]} path
# @return {Integer}
def transportation_hub(path)
  d = {}
  for i, j in path
    d[i] = -2001
    if d.has_key?(j)
      d[j] += 1
    else
      d[j] = 1
    end
  end
  n = d.length - 1
  d.each_pair do |k, v|
    if v == n
      return k
    end
  end
  return -1
end

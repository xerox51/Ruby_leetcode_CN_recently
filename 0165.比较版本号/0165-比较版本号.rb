# @param {String} version1
# @param {String} version2
# @return {Integer}
def compare_version(version1, version2)
  n, m = version1.length, version2.length
  i, j = 0, 0
  while i < n || j < m
    x = 0
    while i < n && version1[i] != "."
      x = x * 10 + version1[i].ord - "0".ord
      i += 1
    end
    i += 1
    y = 0
    while j < m && version2[j] != "."
      y = y * 10 + version2[j].ord - "0".ord
      j += 1
    end
    j += 1
    if x != y
      if x > y
        return 1
      else
        return -1
      end
    end
  end
  0
end

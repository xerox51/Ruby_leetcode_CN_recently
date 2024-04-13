# @param {String[]} arr
# @return {String[]}
def shortest_substrings(arr)
  ans = []
  arr.each_with_index do |s, i|
    m = s.length
    res = ""
    for size in 1..m
      for j in size..m
        t = s[j - size, size]
        if (res.length == 0 || t < res) && check(i, t, arr)
          res = t
        end
      end
      if res.length > 0
        break
      end
    end
    ans.push(res)
  end
  ans
end

def check(i, sub, arr)
  arr.each_with_index do |s, j|
    if j != i && s.include?(sub)
      return false
    end
  end
  return true
end

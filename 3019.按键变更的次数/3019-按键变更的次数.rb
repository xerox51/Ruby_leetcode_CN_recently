# @param {String} s
# @return {Integer}
def count_key_changes(s)
  ans = 0
  a = s.downcase
  for i in 0...a.length - 1
    if a[i] != a[i + 1]
      ans += 1
    end
  end
  ans
end

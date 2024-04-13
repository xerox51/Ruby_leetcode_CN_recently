# @param {String} s
# @return {Boolean}
def is_substring_present(s)
  s1 = s.reverse
  for i in 0...s.length - 1
    if s1.include?(s[i] + s[i + 1])
      return true
    end
  end
  return false
end

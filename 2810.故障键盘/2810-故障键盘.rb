# @param {String} s
# @return {String}
def final_string(s)
  s1 = ""
  for i in 0...s.length
    if s[i] != "i"
      s1 << s[i]
    else
      s1 = s1.reverse
    end
  end
  s1
end

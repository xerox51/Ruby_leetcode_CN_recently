# @param {String} s
# @return {String}
def frequency_sort(s)
  ans = {}
  for i in 0...s.length
    if ans.has_key?(s[i])
      ans[s[i]] += 1
    else
      ans[s[i]] = 1
    end
  end
  tmp = ans.keys
  tmp.sort_by! { |item| -ans[item] }
  out = ""
  for i in 0...tmp.length
    out << tmp[i] * ans[tmp[i]]
  end
  out
end

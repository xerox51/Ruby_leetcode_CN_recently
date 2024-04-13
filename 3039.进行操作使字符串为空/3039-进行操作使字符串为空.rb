# @param {String} s
# @return {String}
def last_non_empty_string(s)
  last = {}
  for i in 0...s.length
    last[s[i]] = i
  end
  cnt = {}
  for i in 0...s.length
    if cnt.has_key?(s[i])
      cnt[s[i]] += 1
    else
      cnt[s[i]] = 1
    end
  end
  mx = cnt.values.max
  ids = []
  cnt.each_pair do |k, v|
    if v == mx
      ids.push(last[k])
    end
  end
  ids.sort!
  ids.map! { |i| s[i] }
  ids.join
end

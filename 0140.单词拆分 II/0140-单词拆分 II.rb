# @param {String} s
# @param {String[]} word_dict
# @return {String[]}
def word_break(s, word_dict)
  wordset = word_dict.to_h { |item| [item, true] }
  len = s.length
  dp = Array.new(len + 1, false)
  dp[0] = true
  for i in 1..len
    (i - 1).downto(0) do |j|
      if wordset.include?(s[j, i - j]) && dp[j]
        dp[i] = true
        break
      end
    end
  end
  res = []
  if dp[len]
    path = []
    dfs(s, len, wordset, dp, path, res)
    return res
  end
  return res
end

def dfs(s, len, wordset, dp, path, res)
  if len == 0
    res.push(path.join(" "))
    return
  end
  (len - 1).downto(0) do |i|
    suffix = s[i, len - i]
    if wordset.include?(suffix) && dp[i]
      path.unshift(suffix)
      dfs(s, i, wordset, dp, path, res)
      path.shift
    end
  end
end

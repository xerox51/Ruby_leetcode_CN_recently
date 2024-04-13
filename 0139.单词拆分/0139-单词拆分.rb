# @param {String} s
# @param {String[]} word_dict
# @return {Boolean}
def word_break(s, word_dict)
  wordDictset = word_dict.to_h { |it| [it, true] }
  dp = Array.new(s.length + 1, false)
  dp[0] = true
  for i in 1..s.length
    for j in 0...i
      if dp[j] && wordDictset.has_key?(s[j, i - j])
        dp[i] = true
        break
      end
    end
  end
  dp[s.length]
end

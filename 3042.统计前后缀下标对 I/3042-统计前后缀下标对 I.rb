# @param {String[]} words
# @return {Integer}
def count_prefix_suffix_pairs(words)
  ans = 0
  len = words.length
  for i in 0...len
    for j in 0...len
      if i < j && words[j].start_with?(words[i]) && words[j].end_with?(words[i])
        ans += 1
      end
    end
  end
  ans
end

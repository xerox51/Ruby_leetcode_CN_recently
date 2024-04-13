# @param {String[]} words
# @param {Integer[]} groups
# @return {String[]}
def get_longest_subsequence(words, groups)
  s = []
  if words.length == 1
    return [words[0]]
  end
  i = 0
  while i < words.length - 1
    if i < words.length - 2
      if groups[i] == groups[i + 1]
        i += 1
      else
        s << words[i]
        i += 1
      end
    else
      if groups[i] != groups[i + 1]
        s << words[i]
        s << words[i + 1]
        break
      else
        s << words[i]
        break
      end
    end
  end
  return s
end

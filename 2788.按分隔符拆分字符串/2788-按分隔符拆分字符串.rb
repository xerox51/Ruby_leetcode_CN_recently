# @param {String[]} words
# @param {Character} separator
# @return {String[]}
def split_words_by_separator(words, separator)
  ans = []
  words.each do |word|
    ans.concat(word.split(separator))
  end
  ans.delete("")
  ans
end

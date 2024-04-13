# @param {String} num
# @param {String[]} words
# @return {String[]}
def get_valid_t9_words(num, words)
  h = { "2" => ["a", "b", "c"],
        "3" => ["d", "e", "f"],
        "4" => ["g", "h", "i"],
        "5" => ["j", "k", "l"],
        "6" => ["m", "n", "o"],
        "7" => ["p", "q", "r", "s"],
        "8" => ["t", "u", "v"],
        "9" => ["w", "x", "y", "z"] }
  ans = []
  words.each do |word|
    flag = true
    for i in 0...word.length
      unless h[num[i]].include?(word[i])
        flag = false
        break
      end
    end
    if flag
      ans.push(word)
    end
  end
  ans
end

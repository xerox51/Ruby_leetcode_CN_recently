# @param {String[]} words
# @return {Integer}
def maximum_number_of_string_pairs(words)
  ans = 0
  words.each do |item|
    words.each do |word|
      if item == word.reverse and item != word
        ans += 1
      end
    end
  end
  ans / 2
end

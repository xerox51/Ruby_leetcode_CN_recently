# @param {String[]} words
# @return {Integer}
def num_special_equiv_groups(words)
  def count(a)
    ans = Array.new(52, 0)
    a.each_char.to_a.each_with_index do |letter, i|
      index = letter.ord - "a".ord + 26 * (i % 2)
      ans[index] += 1
    end
    return ans.freeze
  end

  return words.map(&method(:count)).uniq.size
end

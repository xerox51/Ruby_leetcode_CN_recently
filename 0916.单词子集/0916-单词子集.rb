# @param {String[]} words1
# @param {String[]} words2
# @return {String[]}
def word_subsets(words1, words2)
  words2.map! { |it| it.each_char.to_a.uniq.to_h { |i| [i, it.count(i)] } }
  h1 = {}
  words2.each do |it|
    it.each_pair do |k, v|
      if h1.has_key?(k)
        h1[k] = [h1[k], v].max
      else
        h1[k] = v
      end
    end
  end
  words1_tmp = words1.map { |it| it.each_char.to_a.uniq.to_h { |i| [i, it.count(i)] } }
  ans = []
  words1_tmp.each_with_index do |it, i|
    if h1.all? { |k, v| it.has_key?(k) && it[k] >= h1[k] }
      ans.push(words1[i])
    end
  end
  ans
end

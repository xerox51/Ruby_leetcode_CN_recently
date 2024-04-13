# @param {String[]} words
# @return {Integer}
def max_product(words)
  nums = words.map { |item| item.each_char.to_a.uniq.sort }
  h = {}
  for i in 0...nums.length
    if h.has_key?(nums[i])
      h[nums[i]] = [h[nums[i]], words[i].length].max
    else
      h[nums[i]] = words[i].length
    end
  end
  ans = 0
  h.each_pair do |k, v|
    h.each_pair do |key, value|
      if (k & key).length == 0
        ans = [ans, v * value].max
      end
    end
  end
  ans
end

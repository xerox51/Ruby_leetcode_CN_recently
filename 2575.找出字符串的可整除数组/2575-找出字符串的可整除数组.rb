# @param {String} word
# @param {Integer} m
# @return {Integer[]}
def divisibility_array(word, m)
  cur = 0
  res = []
  for i in 0...word.length
    cur = (cur * 10 + word[i].to_i) % m
    if cur == 0
      res.push(1)
    else
      res.push(0)
    end
  end
  res
end

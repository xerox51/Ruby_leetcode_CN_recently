# @param {String[]} words_container
# @param {String[]} words_query
# @return {Integer[]}
def string_indices(words_container, words_query)
  ord_a = "a".ord
  root = Node.new
  words_container.each_with_index do |s, idx|
    l = s.length
    cur = root
    if l < cur.min_l
      cur.min_l, cur.i = l, idx
    end
    m = s.reverse.each_char.to_a.map { |it| it.ord }
    for c in m
      c -= ord_a
      if cur.son[c] == nil
        cur.son[c] = Node.new
      end
      cur = cur.son[c]
      if l < cur.min_l
        cur.min_l, cur.i = l, idx
      end
    end
  end
  ans = []
  for s in words_query
    cur = root
    m = s.reverse.each_char.to_a.map { |it| it.ord }
    for c in m
      c -= ord_a
      if cur.son[c] == nil
        break
      end
      cur = cur.son[c]
    end
    ans.push(cur.i)
  end
  ans
end

class Node
  attr_accessor :son
  attr_accessor :min_l
  attr_accessor :i

  def initialize()
    self.son = Array.new(26, nil)
    self.min_l = 1.0 / 0.0
  end
end

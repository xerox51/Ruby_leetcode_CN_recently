class Trie
  attr_accessor :children
  attr_accessor :isend

  def initialize()
    self.children = Array.new(26, nil)
    self.isend = false
  end

  def serachprefix(prefix)
    node = self
    for ch in prefix.each_char.to_a
      ch = ch.ord - "a".ord
      if node.children[ch] == nil
        return nil
      end
      node = node.children[ch]
    end
    return node
  end

=begin
    :type word: String
    :rtype: Void
=end
  def insert(word)
    node = self
    for ch in word.each_char.to_a
      ch = ch.ord - "a".ord
      if node.children[ch] == nil
        node.children[ch] = Trie.new
      end
      node = node.children[ch]
    end
    node.isend = true
  end

=begin
    :type word: String
    :rtype: Boolean
=end
  def search(word)
    node = self.serachprefix(word)
    node != nil && node.isend
  end

=begin
    :type prefix: String
    :rtype: Boolean
=end
  def starts_with(prefix)
    self.serachprefix(prefix) != nil
  end
end

# Your Trie object will be instantiated and called as such:
# obj = Trie.new()
# obj.insert(word)
# param_2 = obj.search(word)
# param_3 = obj.starts_with(prefix)

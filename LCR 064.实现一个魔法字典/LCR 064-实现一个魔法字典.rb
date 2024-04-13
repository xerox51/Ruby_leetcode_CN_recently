class MagicDictionary

=begin
    Initialize your data structure here.
=end
  def initialize()
    @h = []
  end

=begin
    :type dictionary: String[]
    :rtype: Void
=end
  def build_dict(dictionary)
    @h = dictionary.flatten
  end

=begin
    :type search_word: String
    :rtype: Boolean
=end
  def search(search_word)
    @h.each do |w|
      flag = 0
      l = w.length
      if l != search_word.length
        next
      else
        cnt = 0
        for i in 0...l
          if search_word[i] != w[i]
            cnt += 1
          end
        end
        if cnt == 1
          return true
        end
      end
    end
    return false
  end
end

# Your MagicDictionary object will be instantiated and called as such:
# obj = MagicDictionary.new()
# obj.build_dict(dictionary)
# param_2 = obj.search(search_word)

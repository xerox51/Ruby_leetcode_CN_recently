class WordsFrequency

=begin
    :type book: String[]
=end
  def initialize(book)
    @h = {}
    book.each do |b|
      if @h.has_key?(b)
        @h[b] += 1
      else
        @h[b] = 1
      end
    end
  end

=begin
    :type word: String
    :rtype: Integer
=end
  def get(word)
    if @h.has_key?(word)
      return @h[word]
    else
      return 0
    end
  end
end

# Your WordsFrequency object will be instantiated and called as such:
# obj = WordsFrequency.new(book)
# param_1 = obj.get(word)

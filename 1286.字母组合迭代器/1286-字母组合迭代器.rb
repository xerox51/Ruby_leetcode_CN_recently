class CombinationIterator

=begin
    :type characters: String
    :type combination_length: Integer
=end
  def initialize(characters, combination_length)
    @num = []
    characters.each_char.to_a.combination(combination_length) do |it|
      @num.push(it.join)
    end
    @len = @num.length
    @cnt = 0
  end

=begin
    :rtype: String
=end
  def next()
    if @cnt < @len
      a = @num[@cnt]
      @cnt += 1
      return a
    else
      return nil
    end
  end

=begin
    :rtype: Boolean
=end
  def has_next()
    @cnt < @len
  end
end

# Your CombinationIterator object will be instantiated and called as such:
# obj = CombinationIterator.new(characters, combination_length)
# param_1 = obj.next()
# param_2 = obj.has_next()

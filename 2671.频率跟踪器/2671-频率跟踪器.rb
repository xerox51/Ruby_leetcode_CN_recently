class FrequencyTracker
  def initialize()
    @h = Hash.new(0)
    @cnt = Hash.new(0)
  end

=begin
    :type number: Integer
    :rtype: Void
=end
  def add(number)
    @h[number] += 1
    @cnt[@h[number]] += 1
    @cnt[@h[number] - 1] -= 1
  end

=begin
    :type number: Integer
    :rtype: Void
=end
  def delete_one(number)
    if @h.has_key?(number)
      @cnt[@h[number]] -= 1
      @cnt[@h[number] - 1] += 1
      @h[number] -= 1
      if @h[number] == 0
        @h.delete(number)
        @cnt[@h[number]] = 0
      end
    end
  end

=begin
    :type frequency: Integer
    :rtype: Boolean
=end
  def has_frequency(frequency)
    if @cnt[frequency] > 0
      return true
    else
      return false
    end
  end
end

# Your FrequencyTracker object will be instantiated and called as such:
# obj = FrequencyTracker.new()
# obj.add(number)
# obj.delete_one(number)
# param_3 = obj.has_frequency(frequency)

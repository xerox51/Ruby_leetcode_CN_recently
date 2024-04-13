class CustomStack

=begin
    :type max_size: Integer
=end
  def initialize(max_size)
    @num = []
    @size = max_size
    @l = max_size
  end

=begin
    :type x: Integer
    :rtype: Void
=end
  def push(x)
    if @size > 0
      @num.push(x)
      @size -= 1
    end
  end

=begin
    :rtype: Integer
=end
  def pop()
    if @size == @l
      return -1
    else
      @size += 1
      @num.pop
    end
  end

=begin
    :type k: Integer
    :type val: Integer
    :rtype: Void
=end
  def increment(k, val)
    if @num.length < k
      @num.map! { |item| item + val }
    else
      @num[0, k] = @num[0, k].map { |item| item + val }
    end
  end
end

# Your CustomStack object will be instantiated and called as such:
# obj = CustomStack.new(max_size)
# obj.push(x)
# param_2 = obj.pop()
# obj.increment(k, val)

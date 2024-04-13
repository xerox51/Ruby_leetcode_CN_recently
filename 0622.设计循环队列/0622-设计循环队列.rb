class MyCircularQueue

=begin
    :type k: Integer
=end
  def initialize(k)
    @num = []
    @len = k
  end

=begin
    :type value: Integer
    :rtype: Boolean
=end
  def en_queue(value)
    if @num.length < @len
      @num.push(value)
      return true
    else
      return false
    end
  end

=begin
    :rtype: Boolean
=end
  def de_queue()
    if @num.length == 0
      return false
    else
      @num.shift
      return true
    end
  end

=begin
    :rtype: Integer
=end
  def front()
    if @num.length == 0
      return -1
    else
      return @num[0]
    end
  end

=begin
    :rtype: Integer
=end
  def rear()
    if @num.length == 0
      return -1
    else
      return @num[-1]
    end
  end

=begin
    :rtype: Boolean
=end
  def is_empty()
    @num.length == 0
  end

=begin
    :rtype: Boolean
=end
  def is_full()
    @num.length == @len
  end
end

# Your MyCircularQueue object will be instantiated and called as such:
# obj = MyCircularQueue.new(k)
# param_1 = obj.en_queue(value)
# param_2 = obj.de_queue()
# param_3 = obj.front()
# param_4 = obj.rear()
# param_5 = obj.is_empty()
# param_6 = obj.is_full()

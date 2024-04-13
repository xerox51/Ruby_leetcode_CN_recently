class MyQueue
  def initialize()
    @num = []
  end

=begin
    :type x: Integer
    :rtype: Void
=end
  def push(x)
    @num.push(x)
  end

=begin
    :rtype: Integer
=end
  def pop()
    @num.delete_at(0)
  end

=begin
    :rtype: Integer
=end
  def peek()
    @num.first
  end

=begin
    :rtype: Boolean
=end
  def empty()
    @num.empty?
  end
end

# Your MyQueue object will be instantiated and called as such:
# obj = MyQueue.new()
# obj.push(x)
# param_2 = obj.pop()
# param_3 = obj.peek()
# param_4 = obj.empty()

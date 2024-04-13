class MyStack
  def initialize()
    @arr = []
  end

=begin
    :type x: Integer
    :rtype: Void
=end
  def push(x)
    @arr.push(x)
  end

=begin
    :rtype: Integer
=end
  def pop()
    @arr.pop
  end

=begin
    :rtype: Integer
=end
  def top()
    @arr[-1]
  end

=begin
    :rtype: Boolean
=end
  def empty()
    @arr.empty?
  end
end

# Your MyStack object will be instantiated and called as such:
# obj = MyStack.new()
# obj.push(x)
# param_2 = obj.pop()
# param_3 = obj.top()
# param_4 = obj.empty()

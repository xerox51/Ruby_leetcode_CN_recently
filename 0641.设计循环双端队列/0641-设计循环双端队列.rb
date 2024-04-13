class MyCircularDeque

=begin
    :type k: Integer
=end
  def initialize(k)
    @nums = []
    @len = k
    @l = k
  end

=begin
    :type value: Integer
    :rtype: Boolean
=end
  def insert_front(value)
    if @len > 0
      @nums.unshift(value)
      @len -= 1
      return true
    else
      return false
    end
  end

=begin
    :type value: Integer
    :rtype: Boolean
=end
  def insert_last(value)
    if @len > 0
      @nums.push(value)
      @len -= 1
      return true
    else
      return false
    end
  end

=begin
    :rtype: Boolean
=end
  def delete_front()
    if @len != @l
      @nums.shift
      @len += 1
      return true
    else
      return false
    end
  end

=begin
    :rtype: Boolean
=end
  def delete_last()
    if @len != @l
      @nums.pop
      @len += 1
      return true
    else
      return false
    end
  end

=begin
    :rtype: Integer
=end
  def get_front()
    if @len == @l
      return -1
    else
      return @nums[0]
    end
  end

=begin
    :rtype: Integer
=end
  def get_rear()
    if @len == @l
      return -1
    else
      return @nums[-1]
    end
  end

=begin
    :rtype: Boolean
=end
  def is_empty()
    @len == @l
  end

=begin
    :rtype: Boolean
=end
  def is_full()
    @len == 0
  end
end

# Your MyCircularDeque object will be instantiated and called as such:
# obj = MyCircularDeque.new(k)
# param_1 = obj.insert_front(value)
# param_2 = obj.insert_last(value)
# param_3 = obj.delete_front()
# param_4 = obj.delete_last()
# param_5 = obj.get_front()
# param_6 = obj.get_rear()
# param_7 = obj.is_empty()
# param_8 = obj.is_full()

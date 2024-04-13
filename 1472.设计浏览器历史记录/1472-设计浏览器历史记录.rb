class BrowserHistory

=begin
    :type homepage: String
=end
  def initialize(homepage)
    @stack = []
    @stack.push(homepage)
    @len = @stack.length
    @flag = -1
  end

=begin
    :type url: String
    :rtype: Void
=end
  def visit(url)
    if @flag != -1
      @stack = @stack.take(@flag + @len + 1)
      @stack.push(url)
      @len = @stack.length
      @flag = -1
    else
      @stack.push(url)
      @len += 1
      @flag = -1
    end
  end

=begin
    :type steps: Integer
    :rtype: String
=end
  def back(steps)
    if @flag - steps >= -@len
      @flag = @flag - steps
      return @stack[@flag]
    else
      @flag = -@len
      return @stack[@flag]
    end
  end

=begin
    :type steps: Integer
    :rtype: String
=end
  def forward(steps)
    if @flag + steps <= -1
      @flag = @flag + steps
      return @stack[@flag]
    else
      @flag = -1
      return @stack[@flag]
    end
  end
end

# Your BrowserHistory object will be instantiated and called as such:
# obj = BrowserHistory.new(homepage)
# obj.visit(url)
# param_2 = obj.back(steps)
# param_3 = obj.forward(steps)

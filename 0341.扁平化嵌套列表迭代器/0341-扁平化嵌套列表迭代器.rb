# This is the interface that allows for creating nested lists.
# You should not implement it, or speculate about its implementation
#
#class NestedInteger
#    def is_integer()
#        """
#        Return true if this NestedInteger holds a single integer, rather than a nested list.
#        @return {Boolean}
#        """
#
#    def get_integer()
#        """
#        Return the single integer that this NestedInteger holds, if it holds a single integer
#        Return nil if this NestedInteger holds a nested list
#        @return {Integer}
#        """
#
#    def get_list()
#        """
#        Return the nested list that this NestedInteger holds, if it holds a nested list
#        Return nil if this NestedInteger holds a single integer
#        @return {NestedInteger[]}
#        """

class NestedIterator
  # @param {NestedInteger[]} nested_list
  attr_accessor :queue

  def initialize(nested_list)
    self.queue = []
    dfs(nested_list)
  end

  # @return {Boolean}
  def has_next
    if self.queue.length > 0
      return true
    else
      return false
    end
  end

  # @return {Integer}
  def next
    if self.has_next
      return self.queue.shift
    else
      return -1
    end
  end

  def dfs(nested_list)
    for item in nested_list
      if item.is_integer
        self.queue.push(item.get_integer)
      else
        dfs(item.get_list)
      end
    end
  end
end

# Your NestedIterator will be called like this:
# i, v = NestedIterator.new(nested_list), []
# while i.has_next()
#    v << i.next
# end

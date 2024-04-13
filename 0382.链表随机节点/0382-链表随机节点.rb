# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
class Solution
  attr_accessor :head
=begin
    :type head: ListNode
=end
  def initialize(head)
    self.head = head
  end

=begin
    :rtype: Integer
=end
  def get_random()
    node, i, ans = self.head, 1, 0
    while node != nil
      if rand(i) == 0
        ans = node.val
      end
      i += 1
      node = node.next
    end
    ans
  end
end

# Your Solution object will be instantiated and called as such:
# obj = Solution.new(head)
# param_1 = obj.get_random()

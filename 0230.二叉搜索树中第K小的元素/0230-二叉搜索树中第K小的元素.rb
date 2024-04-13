# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @param {Integer} k
# @return {Integer}
def kth_smallest(root, k)
  stack = []
  while root != nil || stack != nil
    while root != nil
      stack.push(root)
      root = root.left
    end
    root = stack.pop
    k -= 1
    if k == 0
      return root.val
    end
    root = root.right
  end
end

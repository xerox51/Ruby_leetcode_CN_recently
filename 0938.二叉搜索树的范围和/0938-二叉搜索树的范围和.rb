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
# @param {Integer} low
# @param {Integer} high
# @return {Integer}
def range_sum_bst(root, low, high)
  if root == nil
    return 0
  end
  if root.val > high
    return range_sum_bst(root.left, low, high)
  end
  if root.val < low
    return range_sum_bst(root.right, low, high)
  end
  return root.val + range_sum_bst(root.left, low, high) + range_sum_bst(root.right, low, high)
end

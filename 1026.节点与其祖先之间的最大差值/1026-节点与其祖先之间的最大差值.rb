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
# @return {Integer}
def max_ancestor_diff(root)
  dfs(root, root.val, root.val)
end

def dfs(root, mi, ma)
  if root == nil
    return 0
  end
  diff = [(root.val - mi).abs, (root.val - ma).abs].max
  mi = [mi, root.val].min
  ma = [ma, root.val].max
  diff = [diff, dfs(root.left, mi, ma)].max
  diff = [diff, dfs(root.right, mi, ma)].max
  diff
end

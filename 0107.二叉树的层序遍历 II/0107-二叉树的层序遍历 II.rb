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
# @return {Integer[][]}
def level_order_bottom(root)
  levelorder = []
  if root == nil
    return levelorder
  end
  q = [root]
  while q.length > 0
    level = []
    size = q.size
    for i in 0...size
      node = q.shift
      level.push(node.val)
      left, right = node.left, node.right
      if left != nil
        q.push(left)
      end
      if right != nil
        q.push(right)
      end
    end
    levelorder.push(level)
  end
  levelorder.reverse
end

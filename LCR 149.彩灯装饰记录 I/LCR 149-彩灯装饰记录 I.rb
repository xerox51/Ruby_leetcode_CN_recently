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
# @return {Integer[]}
def decorate_record(root)
  if root == nil
    return []
  end
  res, queue = [], []
  queue.push(root)
  while queue.length > 0
    node = queue.shift
    res.push(node.val)
    if node.left != nil
      queue.push(node.left)
    end
    if node.right != nil
      queue.push(node.right)
    end
  end
  res
end

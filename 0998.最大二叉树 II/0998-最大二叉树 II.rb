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
# @param {Integer} val
# @return {TreeNode}
def insert_into_max_tree(root, val)
  node = TreeNode.new(val)
  prev = nil
  cur = root
  while cur != nil && cur.val > val
    prev = cur
    cur = cur.right
  end
  if prev == nil
    node.left = cur
    return node
  else
    prev.right = node
    node.left = cur
    return root
  end
end

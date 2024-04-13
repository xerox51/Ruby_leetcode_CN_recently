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
def level_order(root)
  ret = []
  if root == nil
    return ret
  end
  queue = []
  queue.push(root)
  while queue.length > 0
    level = []
    currentlevelsize = queue.length
    for i in 1..currentlevelsize
      node = queue.shift
      level.push(node.val)
      if node.left != nil
        queue.push(node.left)
      end
      if node.right != nil
        queue.push(node.right)
      end
    end
    ret.push(level)
  end
  ret
end
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
def zigzag_level_order(root)
  ans = []
  if root == nil
    return ans
  end
  nodequeue = []
  nodequeue.push(root)
  isorderleft = true
  while nodequeue.length > 0
    levellist = []
    size = nodequeue.length
    for i in 0...size
      node = nodequeue.shift
      if isorderleft
        levellist.push(node.val)
      else
        levellist.unshift(node.val)
      end
      if node.left != nil
        nodequeue.push(node.left)
      end
      if node.right != nil
        nodequeue.push(node.right)
      end
    end
    ans.push(levellist)
    isorderleft = !isorderleft
  end
  ans
end

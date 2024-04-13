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
def kth_largest_level_sum(root, k)
  q = [root]
  levelsumarray = []
  while q.length > 0
    levelnodes = q
    levelsum = 0
    q = []
    for node in levelnodes
      levelsum += node.val
      if node.left != nil
        q.push(node.left)
      end
      if node.right != nil
        q.push(node.right)
      end
    end
    levelsumarray.push(levelsum)
  end
  if levelsumarray.length < k
    return -1
  end
  levelsumarray.sort!
  levelsumarray[-k]
end

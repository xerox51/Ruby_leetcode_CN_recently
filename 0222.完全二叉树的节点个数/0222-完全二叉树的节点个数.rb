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
def count_nodes(root)
  if root == nil
    return 0
  end
  level = 0
  node = root
  while node.left != nil
    level += 1
    node = node.left
  end
  low, high = 1 << level, (1 << (level + 1)) - 1
  while low < high
    mid = (high - low + 1) / 2 + low
    if exists(root, level, mid)
      low = mid
    else
      high = mid - 1
    end
  end
  low
end

def exists(root, level, k)
  bits = 1 << (level - 1)
  node = root
  while node != nil && bits > 0
    if bits & k == 0
      node = node.left
    else
      node = node.right
    end
    bits >>= 1
  end
  node != nil
end

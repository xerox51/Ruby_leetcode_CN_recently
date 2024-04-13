# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {Integer[]} preorder
# @return {TreeNode}
def bst_from_preorder(preorder)
  len = preorder.length
  if len == 0
    return nil
  end
  dfs(preorder, 0, len - 1)
end

def dfs(preorder, left, right)
  if left > right
    return nil
  end
  root = TreeNode.new(preorder[left])
  if left == right
    return root
  end
  l = left
  r = right
  while l < r
    mid = l + (r - l + 1) / 2
    if preorder[mid] < preorder[left]
      l = mid
    else
      r = mid - 1
    end
  end
  lefttree = dfs(preorder, left + 1, l)
  righttree = dfs(preorder, l + 1, right)
  root.left = lefttree
  root.right = righttree
  root
end

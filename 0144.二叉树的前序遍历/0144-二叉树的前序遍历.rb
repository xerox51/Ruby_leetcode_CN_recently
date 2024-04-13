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
def preorder_traversal(root)
  ans = []
  preorder(root, ans)
  return ans
end

def preorder(root, ans)
  if root != nil
    ans.push(root.val)
    preorder(root.left, ans)
    preorder(root.right, ans)
  end
end

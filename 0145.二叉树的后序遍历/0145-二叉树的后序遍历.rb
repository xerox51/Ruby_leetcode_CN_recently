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
def postorder_traversal(root)
  ans = []
  postorder(root, ans)
  return ans
end

def postorder(root, ans)
  if root != nil
    postorder(root.left, ans)
    postorder(root.right, ans)
    ans.push(root.val)
  end
end

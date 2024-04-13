# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {Integer[]} inorder
# @param {Integer[]} postorder
# @return {TreeNode}
def build_tree(inorder, postorder)
  if postorder == nil || postorder.length == 0
    return nil
  end
  root = TreeNode.new(postorder[-1])
  stack = []
  stack.push(root)
  inorderindex = inorder.length - 1
  (postorder.length - 2).downto(0) do |i|
    postorderval = postorder[i]
    node = stack[-1]
    if node.val != inorder[inorderindex]
      node.right = TreeNode.new(postorderval)
      stack.push(node.right)
    else
      while stack.length > 0 && stack[-1].val == inorder[inorderindex]
        node = stack.pop
        inorderindex -= 1
      end
      node.left = TreeNode.new(postorderval)
      stack.push(node.left)
    end
  end
  root
end

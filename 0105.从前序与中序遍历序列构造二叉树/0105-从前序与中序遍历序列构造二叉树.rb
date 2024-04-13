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
# @param {Integer[]} inorder
# @return {TreeNode}
def build_tree(preorder, inorder)
  if preorder == nil
    return nil
  end
  root = TreeNode.new(preorder[0])
  stack = [root]
  inorder_index = 0
  for i in 1...preorder.length
    preorderval = preorder[i]
    node = stack[-1]
    if node.val != inorder[inorder_index]
      node.left = TreeNode.new(preorderval)
      stack.push(node.left)
    else
      while stack.length > 0 && stack[-1].val == inorder[inorder_index]
        node = stack.pop
        inorder_index += 1
      end
      node.right = TreeNode.new(preorderval)
      stack.push(node.right)
    end
  end
  root
end

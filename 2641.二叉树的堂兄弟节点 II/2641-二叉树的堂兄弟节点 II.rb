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
# @return {TreeNode}
def replace_value_in_tree(root)
  q = [root]
  root.val = 0
  while q.length > 0
    q2 = []
    sum = 0
    for fa in q
      if fa.left != nil
        q2.push(fa.left)
        sum += fa.left.val
      end
      if fa.right != nil
        q2.push(fa.right)
        sum += fa.right.val
      end
    end
    for fa in q
      if fa.left != nil
        a = fa.left.val
      else
        a = 0
      end
      if fa.right != nil
        b = fa.right.val
      else
        b = 0
      end
      childsum = a + b
      if fa.left != nil
        fa.left.val = sum - childsum
      end
      if fa.right != nil
        fa.right.val = sum - childsum
      end
    end
    q = q2
  end
  root
end

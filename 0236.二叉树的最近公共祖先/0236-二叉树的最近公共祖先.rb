# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {TreeNode} p
# @param {TreeNode} q
# @return {TreeNode}
def lowest_common_ancestor(root, p, q)
  dfs(root, p, q)
  @ans
end

def dfs(root, p, q)
  if root == nil
    return false
  end
  lson = dfs(root.left, p, q)
  rson = dfs(root.right, p, q)
  if ((lson && rson) || ((root.val == p.val || root.val == q.val) && (lson || rson)))
    @ans = root
  end
  return lson || rson || (root.val == p.val || root.val == q.val)
end

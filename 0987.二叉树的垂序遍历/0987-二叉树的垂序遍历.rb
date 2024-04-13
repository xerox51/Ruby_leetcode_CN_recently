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
def vertical_traversal(root)
  @nodes = []
  dfs(root, 0, 0)
  @nodes.sort!
  ans, lastcol = [], -1.0 / 0.0
  for col, row, value in @nodes
    if col != lastcol
      lastcol = col
      ans.push([])
    end
    ans[-1].push(value)
  end
  ans
end

def dfs(node, row, col)
  if node == nil
    return
  end
  @nodes.push([col, row, node.val])
  dfs(node.left, row + 1, col - 1)
  dfs(node.right, row + 1, col + 1)
end

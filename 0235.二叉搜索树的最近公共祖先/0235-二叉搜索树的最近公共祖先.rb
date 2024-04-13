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
  path_p = getpath(root, p)
  path_q = getpath(root, q)
  ancestor = nil
  for u, v in path_p.zip(path_q)
    if u == v
      ancestor = u
    else
      break
    end
  end
  ancestor
end

def getpath(root, target)
  path = []
  node = root
  while node != target
    path.push(node)
    if target.val < node.val
      node = node.left
    else
      node = node.right
    end
  end
  path.push(node)
  return path
end

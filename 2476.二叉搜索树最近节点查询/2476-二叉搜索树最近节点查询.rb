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
# @param {Integer[]} queries
# @return {Integer[][]}
def closest_nodes(root, queries)
  @arr = []
  dfs(root)
  res = []
  for val in queries
    maxval, minval = -1, -1
    index = @arr.bsearch_index { |item| item >= val }
    if index == nil
      index = @arr.length
    end
    if index != @arr.length
      maxval = @arr[index]
      if @arr[index] == val
        minval = @arr[index]
        res.push([minval, maxval])
        next
      end
    end
    if index != 0
      minval = @arr[index - 1]
    end
    res.push([minval, maxval])
  end
  res
end

def dfs(root)
  return nil if root == nil
  dfs(root.left)
  @arr.push(root.val)
  dfs(root.right)
end

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
def find_frequent_tree_sum(root)
  @cnt = {}
  dfs(root)
  maxcnt = @cnt.values.max
  ans = []
  @cnt.each_pair do |k, v|
    if v == maxcnt
      ans.push(k)
    end
  end
  ans
end

def dfs(node)
  if node == nil
    return 0
  end
  total = node.val + dfs(node.left) + dfs(node.right)
  if @cnt.has_key?(total)
    @cnt[total] += 1
  else
    @cnt[total] = 1
  end
  total
end

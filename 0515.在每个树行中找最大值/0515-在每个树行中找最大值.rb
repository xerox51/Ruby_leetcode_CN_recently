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
def largest_values(root)
  ans = []
  if root == nil
    return ans
  end
  d = []
  d.push(root)
  while d.length > 0
    len = d.length
    max = -1.0 / 0.0
    for i in 0...len
      tmp = d.shift
      if tmp.left != nil
        d.push(tmp.left)
      end
      if tmp.right != nil
        d.push(tmp.right)
      end
      if tmp.val > max
        max = tmp.val
      end
    end
    ans.push(max)
  end
  ans
end

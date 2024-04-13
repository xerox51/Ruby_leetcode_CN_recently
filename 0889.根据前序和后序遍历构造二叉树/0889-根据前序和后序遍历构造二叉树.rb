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
# @param {Integer[]} postorder
# @return {TreeNode}
def construct_from_pre_post(pre, post)
  @pre = pre
  @post = post
  make(0, 0, @pre.length)
end

def make(i0, i1, n)
  return nil if n == 0
  root = TreeNode.new(@pre[i0])
  return root if n == 1

  for i in 0...n
    if @post[i1 + i - 1] == @pre[i0 + 1]
      break
    end
  end
  root.left = make(i0 + 1, i1, i)
  root.right = make(i0 + i + 1, i1 + i, n - 1 - i)
  return root
end

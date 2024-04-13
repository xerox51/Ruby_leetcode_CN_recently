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
def inorder_traversal(root)
    ans = []
    inorder(root,ans)
    return ans
end

def inorder(root,ans)
    if root != nil
       inorder(root.left,ans)
       ans.push(root.val)
       inorder(root.right,ans)
    end
end
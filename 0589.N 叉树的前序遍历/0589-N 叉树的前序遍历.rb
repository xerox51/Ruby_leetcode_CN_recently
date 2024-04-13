# Definition for a Node.
# class Node
#     attr_accessor :val, :children
#     def initialize(val)
#         @val = val
#         @children = []
#     end
# end

# @param {Node} root
# @return {List[int]}
def preorder(root)
  ans = []
  n_preorder(root, ans)
  return ans
end

def n_preorder(root, ans)
  if root != nil
    ans.push(root.val)
    for item in root.children
      n_preorder(item, ans)
    end
  end
end

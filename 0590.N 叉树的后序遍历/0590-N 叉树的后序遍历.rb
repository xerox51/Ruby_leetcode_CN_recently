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
def postorder(root)
  ans = []
  postorder_n(root, ans)
  return ans
end

def postorder_n(root, ans)
  if root != nil
    for item in root.children
      postorder_n(item, ans)
    end
    ans.push(root.val)
  end
end

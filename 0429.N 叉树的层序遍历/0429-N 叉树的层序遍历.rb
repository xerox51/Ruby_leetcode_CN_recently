# Definition for a Node.
# class Node
#     attr_accessor :val, :children
#     def initialize(val)
#         @val = val
#         @children = []
#     end
# end

# @param {Node} root
# @return {List[List[int]]}
def level_order(root)
  ans = []
  if root == nil
    return ans
  end
  queue = []
  queue.push(root)
  while queue.length > 0
    size = queue.length
    level = []
    for i in 0...size
      node = queue.shift
      level.push(node.val)
      for child in node.children
        if child != nil
          queue.push(child)
        end
      end
    end
    ans.push(level)
  end
  ans
end

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
# @param {Integer} x
# @param {Integer} y
# @return {Boolean}
def is_cousins(root, x, y)
  @x_parent, @x_depth, @x_found = nil, nil, false
  @y_parent, @y_depth, @y_found = nil, nil, false

  def dfs(node, x, y, depth, parent)
    if node == nil
      return
    end
    if node.val == x
      @x_parent, @x_depth, @x_found = parent, depth, true
    elsif node.val == y
      @y_parent, @y_depth, @y_found = parent, depth, true
    end
    if @x_found && @y_found
      return
    end
    dfs(node.left, x, y, depth + 1, node)
    if @x_found && @y_found
      return
    end
    dfs(node.right, x, y, depth + 1, node)
  end

  dfs(root, x, y, 0, nil)
  return @x_depth == @y_depth && @x_parent != @y_parent
end

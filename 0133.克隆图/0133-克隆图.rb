# Definition for a Node.
# class Node
#     attr_accessor :val, :neighbors
#     def initialize(val = 0, neighbors = nil)
#		  @val = val
#		  neighbors = [] if neighbors.nil?
#         @neighbors = neighbors
#     end
# end

# @param {Node} node
# @return {Node}
def cloneGraph(node)
  if node == nil
    return node
  end
  visited = {}
  queue = [node]
  visited[node] = Node.new(node.val, [])
  while queue.length > 0
    n = queue.shift
    for neighbor in n.neighbors
      unless visited.has_key?(neighbor)
        visited[neighbor] = Node.new(neighbor.val, [])
        queue.push(neighbor)
      end
      visited[n].neighbors.push(visited[neighbor])
    end
  end
  visited[node]
end

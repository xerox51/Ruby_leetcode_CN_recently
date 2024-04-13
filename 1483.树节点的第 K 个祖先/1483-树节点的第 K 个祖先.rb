class TreeAncestor

=begin
    :type n: Integer
    :type parent: Integer[]
=end
  def initialize(n, parent)
    @log = 16
    @ancestors = Array.new(n) { Array.new(@log, -1) }
    0.upto(n - 1) do |i|
      @ancestors[i][0] = parent[i]
    end
    1.upto(@log - 1) do |j|
      0.upto(n - 1) do |i|
        if @ancestors[i][j - 1] != -1
          @ancestors[i][j] = @ancestors[@ancestors[i][j - 1]][j - 1]
        end
      end
    end
  end

=begin
    :type node: Integer
    :type k: Integer
    :rtype: Integer
=end
  def get_kth_ancestor(node, k)
    0.upto(@log - 1) do |j|
      if (k >> j) & 1 == 1
        node = @ancestors[node][j]
        if node == -1
          return -1
        end
      end
    end
    node
  end
end

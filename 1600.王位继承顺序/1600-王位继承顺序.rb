class ThroneInheritance

=begin
    :type king_name: String
=end
  def initialize(king_name)
    @h = {}
    @h[king_name] = []
    @h1 = {}
    @name = king_name
  end

=begin
    :type parent_name: String
    :type child_name: String
    :rtype: Void
=end
  def birth(parent_name, child_name)
    if @h[parent_name] == nil
      @h[parent_name] = [child_name]
    else
      @h[parent_name].push(child_name)
    end
  end

=begin
    :type name: String
    :rtype: Void
=end
  def death(name)
    @h1[name] = 1
  end

=begin
    :rtype: String[]
=end
  def get_inheritance_order()
    @ans = []

    def visit(name)
      unless @h1.has_key?(name)
        @ans.push(name)
      end
      if @h.has_key?(name)
        for it in @h[name]
          visit(it)
        end
      end
    end

    visit(@name)
    @ans
  end
end

# Your ThroneInheritance object will be instantiated and called as such:
# obj = ThroneInheritance.new(king_name)
# obj.birth(parent_name, child_name)
# obj.death(name)
# param_3 = obj.get_inheritance_order()

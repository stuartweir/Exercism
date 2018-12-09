class Bst
  attr_accessor :data, :left, :right

  def initialize(data, left = nil, right = nil)
    @data = data
    @left = left
    @right = right
  end

  def insert(element, node = self)
    if element <= node.data
      !node.left ? node.left = Bst.new(element) : insert(element, node.left)
    else
      !node.right ? node.right = Bst.new(element) : insert(element, node.right)
    end
  end

  def each(&proc)
    return to_enum :each unless block_given?
    self.left.each(&proc) if self.left
    yield self.data
    self.right.each(&proc) if self.right
  end
end

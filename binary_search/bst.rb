class Bst

  attr_reader :root_node

  def initialize(content)
    @root_node = Node.new(content)
  end

  def data
    root_node.data
  end

  def insert(data)
    if data <= root_node.data
      add_left(root_node, data)
    else
      root_node.right = Node.new(data)
    end
  end

  def add_left(node, data)
    if node.left.nil?
      node.left = Node.new(data)
    else
      add_left(node.left, data)
      # node.insert(data)
    end
  end

  def left
    root_node.left
  end

  def right
    root_node.right
  end

end

class Node

  attr_reader :data
  attr_accessor :left, :right

  def initialize(content)
    @data = content
    @left = nil
    @right = nil
  end

  # def insert(content)
  #   if content <= data
  #     left = Node.new
  #   else
  #   end
  # end



end

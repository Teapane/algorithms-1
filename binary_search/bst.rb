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
      add_right(root_node, data)
    end
  end

  def add_left(node, data)
    if data <= node.data
      node.left.nil? ? (node.left = Node.new(data)) : add_left(node.left, data)
    else
      add_right(node, data)
    end
  end

  def add_right(node, data)
    if data > node.data
      node.right.nil? ? (node.right = Node.new(data)) : add_right(node.right, data)
    else
      add_left(node, data)
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

end

require './lib/node'

class LinkedList

  attr_reader :head

  def count
    return 0 if head.nil?
    node_count = 1
    current = head
    while current.link
      current = current.link
      node_count += 1
    end
    node_count
  end

  def push(data)
    node = Node.new(data)
    if head.nil?
      @head = node
      return head
    end
    previous = nil
    current = head
    while current.link
      previous = current
      current = current.link
    end
    current.link = node
  end

  def pop
    return if head.nil?
    current = head
    previous = nil
    while current.link
      previous = current
      current = current.link
    end
    previous.link = nil
    current.data
  end

  def shift(data)
    return if head.nil?
    node = Node.new(data)
    node.link = head
    @head = node
  end

  def unshift
    return if head.nil?
    first = head
    @head = first.link
    first.data
  end

  def insert_after(data, position)
    return if position > self.count
    new_node = Node.new(data)
    node_count = 1
    previous = nil
    current = head
    until node_count > position
      previous = current
      current = current.link
      node_count += 1
    end
    previous.link = new_node
    new_node.link = current
    new_node
  end

  def insert_before(data, position)
    return if position > self.count
    new_node = Node.new(data)
    node_count = 1
    current = head
    previous = nil
    while node_count < position
      previous = current
      current = current.link
      node_count += 1
    end
    previous.link = new_node
    new_node.link = current
    new_node
  end

end

require './node'

class LinkedList

  attr_reader :head

  def count
    if head.nil?
      return 0
    end
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
    current = head
    previous = nil
    while current.link
      previous = current
      current = current.link
    end
    current.link = node
  end

  def pop
    if head.nil?
      return
    end
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
    node = Node.new(data)
    if head.nil?
      @head = node
      return
    end
    node.link = head
    @head = node
  end
end

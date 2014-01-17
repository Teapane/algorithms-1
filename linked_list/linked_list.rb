require './node'
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
    current = head
    previous = nil
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
    node = Node.new(data)
    if head.nil?
      @head = node
      return
    end
    node.link = head
    @head = node
  end

  def unshift
    if head.nil?
      return
    end
    first = head
    @head = first.link
    first.data
  end

  def insert_before(index, data)
    if (index+1) > self.count
      return
    end
    node = Node.new(data)
    counter = 1
    previous = nil
    current = head
    while counter < index
      previous = current
      current = current.link
      counter += 1
    end
    previous.link = node
    node.link = current
    node
  end

  def insert_after(index, data)
    if (index+1) > self.count
      return
    end
    node = Node.new(data)
    counter = 0
    previous = nil
    current = head
    while counter < index
      previous = current
      current = current.link
      counter += 1
    end
    previous.link = node
    node.link = current
    node
  end

end

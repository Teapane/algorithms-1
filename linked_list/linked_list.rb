require './node'

class LinkedList

  attr_reader :head

  def count
    if head.nil?
      0
    else
      1
    end
  end

  def push(data)
    @head = Node.new
  end

end

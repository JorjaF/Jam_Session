class LinkedList

  attr_reader :head,
              :count

  def initialize
    @head = nil
    
  end

  def append(data)
    if @head == nil
      @head = Node.new(data)
    else
      current_node = @head
      until current_node.next_node == nil
        count += 1
      end
      current_node.next_node = Node.new(data)
    end
  end

  def count
    count = 0
    current_node = @head
    while current_node.nil? == false
      count += 1
      current_node = current_node.next_node
    end
    count
  end
end

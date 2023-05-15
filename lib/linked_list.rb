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
        current_node = current_node.next_node
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

  def to_string #somehow I missed this in the interaction pattern 
    current_node = @head
    string = ""
    while current_node.nil? == false
      string += current_node.data + " "
      current_node = current_node.next_node
    end
    string.strip
  end

  def prepend(data)
    if @head == nil
      @head = Node.new(data)
    else
      current_node = @head
      @head = Node.new(data)  
      @head.next_node = current_node
    end
  end

  def insert(position, data)
    current_node = @head
    (position - 1).times do
      current_node = current_node.next_node
    end
    new_node = Node.new(data)
    new_node.next_node = current_node.next_node
    current_node.next_node = new_node
  end

  def find(position, number_of_elements)
    current_node = @head
      position.times do
      current_node = current_node.next_node
    end
    string = ""
    number_of_elements.times do
      string += current_node.data + " "
      current_node = current_node.next_node
    end
    string.strip
  end
end

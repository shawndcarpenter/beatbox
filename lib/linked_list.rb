class LinkedList
  attr_reader :head
  attr_writer :next_node
  def initialize
    @head = nil
  end

  def append(word)
    if @head == nil
      @head = Node.new(word)
    else
      head.next_node = Node.new(word)
    end
  end

    

  def count
    node_counter = 0
    if head.next_node == nil
      node_counter = 1
    else
      node_counter += 1

    end
    # until @next_node == nil
    #   node_counter += 1
    # end
    # if @head == nil
    #   node_counter += 1
    # else

    #   until next_node.next_node == nil do
    #     node_counter += 1
    #   end
    node_counter
  end

  def to_string
    head.data
  end

end
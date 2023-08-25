class LinkedList
  attr_reader :head
  def initialize
    @head = nil
  end

  def append(word)
    @head = Node.new(word)
    
  end

  def count
    node_counter = 0
    if head.next_node == nil
      node_counter = 1
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

  end

end
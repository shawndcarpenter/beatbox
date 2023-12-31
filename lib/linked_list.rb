class LinkedList
  attr_reader :head, :data

  def initialize
    @head = nil
  end

  def append(word)
    last_node = Node.new(word)

    if @head == nil
      @head = last_node
    elsif @head.next_node == nil
      @head.next_node = last_node
    else 
      new_node = @head
      until new_node.next_node == nil
        new_node = new_node.next_node
      end

      new_node.next_node = last_node 
    end

  end

  def prepend(word)
    new_head = Node.new(word)

    if @head == nil
      @head = new_head
    else
      old_head = @head
      new_head.next_node = old_head
      @head = new_head
    end

  end
   
  def to_string
    datum = ""
    current_node = @head

    if @head.nil?
      datum
    else
      datum += current_node.data
      until current_node.next_node.nil?
        current_node = current_node.next_node
        datum += " " + current_node.data
      end

    end

    datum
  end

  def insert(position, word)
    new_node = Node.new(word)
    current_node = @head
    first_nodes = @head
    last_nodes = first_nodes.next_node

    if (position + 1) > count
      append(word)
    elsif @head == nil
      @head = new_node
    elsif position == 0
      old_head = @head
      new_node.next_node = old_head
      @head = new_node
    else
      (position - 1).times do
        first_nodes = current_node.next_node
      end

      (position).times do 
        current_node = current_node.next_node
      end

      last_nodes = first_nodes.next_node
      first_nodes.next_node = new_node
      new_node.next_node = last_nodes 
    end

  end

  def find(position, number)
    string_holder = []
    current_node = @head

    if @head.nil?
      string_holder.join(" ")
    elsif number == 1
      (position).times do
        current_node = current_node.next_node
      end

      string_holder << current_node.data
    elsif number > 1
      (position - 1).times do
        current_node = current_node.next_node
      end

      (number).times do
        current_node = current_node.next_node
        string_holder << current_node.data
      end
  
    end

    string_holder.join(" ")
  end

  def includes?(string)
    current_node = @head
    include = false

    if @head == nil
      include = false
    elsif @head.data == string
      include = true
    elsif
      until current_node.next_node.nil? || current_node.data == string
        current_node = current_node.next_node
        if current_node.data == string
          include = true
        else
          include = false
        end

      end

    end

    include
  end

  def count
    node_counter = 0

    if head.next_node == nil
      node_counter = 1
    else
      node_counter = to_string.split(" ").count
    end

    node_counter
  end

  def pop
    popped = ""
    current_node = @head
    new_head = @head

    if @head == nil
      popped = ""
    elsif @head.next_node == nil
      popped += @head.data
      @head = nil
    else
      until current_node.next_node.next_node.nil?
        current_node = current_node.next_node
      end

      popped += current_node.next_node.data
      current_node.next_node = nil
    end

    popped
  end
  
end

class LinkedList
  attr_reader :head, :data
  attr_writer :next_node
  attr_accessor :data
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
      # @head.next_node = old_head
      @head = new_head

    end
  end

  


  # [head] -> [new node] -> [last node] -> nil
  # make a head which is nil
  # give nil head a last node
  # if it is a head with a next node, make that node last
  # if there are more than 2 nodes, make a new variable for another node
  # now that node is new until it runs out (nil)
  # the node on the end of the new node is the last node


    #how can i use variable assignment to shuffle data around in list


    # until @next_node == nil
    #   node_counter += 1
    # end
    # if @head == nil
    #   node_counter += 1
    # else

    #   until next_node.next_node == nil do
    #     node_counter += 1
    #   end
  
   
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
      #   @head.next_node == nil
      #   @head.data.to_s
      # else
      #   until @next_node == nil
      #     datum << @data
      end
      return datum
    end

    def insert(position, word)
      new_node = Node.new(word)
      current_node = @head
      #position_counter = 0
      first_nodes = @head
      last_nodes = first_nodes.next_node

      if @head == nil
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

        #what this list means:
        #first nodes will have the new node after them
        #new node will be followed by the rest of the nodes
        #last nodes will be after first nodes

        #why did the order matter? It only worked if last nodes was defined first
      
      end
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

  def position
    @head.to_string.split(" ").index
  end

  

end

#Just a reminder to write tests for plenty of situations you might not run into if you're just basing it off of the interaction pattern! My code for the insert method worked fine until I set the index to 0 or 2; ended up having to rewrite some stuff.
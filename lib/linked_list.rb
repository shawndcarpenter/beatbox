class LinkedList
  attr_reader :head, :data
  attr_writer :next_node
  attr_accessor :data
  def initialize
    @head = nil
  end

  # def append(word)
  #   last_node = Node.new(word)
  #   if @head == nil
  #     @head = Node.new(word)
  #   else
  #     @head.next_node = Node.new(word)
  #   end
  # end

  # def last_node
    
  # end

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

  

  def count
    node_counter = 0
    if head.next_node == nil
      node_counter = 1
    else
      node_counter = to_string.split(" ").count
    end
    node_counter
  end

end
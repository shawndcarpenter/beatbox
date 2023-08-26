class BeatBox
  def initialize
    @list = LinkedList.new
  end

  def list
    @list
  end

  def append(string)
    words = string.split(" ")
    words.each do |word|
      list.append(word)
    end
  end

  def count 
    @list.count
  end

end
class BeatBox

  def initialize
    @list = LinkedList.new
    
  end

  def list
    @list
  end

  def append(string)
    valid_beats = ["tee", "dee", "deep", "doo", "dit", "bop", "boop", "la", "na", "woo", "hoo", "shu", "ditt"]
    words = string.split(" ")
    words.each do |word|
      if valid_beats.include?(word)
        list.append(word)
      end
    end
  end

  def count 
    @list.count
  end

  def play 
    `say -r 100 -v Boing #{list.to_string}`
  end

  def rate

  end

  def all 
    @list.to_string
  end



end
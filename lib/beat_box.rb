class BeatBox
  attr_reader :words, :rate
  def initialize(words = nil)
    @list = LinkedList.new
    @words = words
    @rate = 500
    if @words != nil
      append(words)
    end

  end

  def list
    @list
  end

  def append(string)
    valid_beats = ["tee", "dee", "deep", "doo", "dit", "bop", "boop", "la", "na", "woo", "hoo", "shu", "ditt", "dop"]
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
    `say -r #{rate} -v Boing #{list.to_string}`
    p @list.count
  end


  # def rate(number)
  #   rate = 500
  # end

  def all 
    @list.to_string
  end



end
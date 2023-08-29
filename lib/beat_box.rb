require "./lib/linked_list"
require "./lib/node"

class BeatBox
  attr_reader :list
  attr_accessor :rate, :voice

  def initialize(words = nil)
    @list = LinkedList.new
    @rate = 500
    @voice = "Boing"
    
    if words
      append(words)
    end

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

  def prepend(string)
    valid_beats = ["tee", "dee", "deep", "doo", "dit", "bop", "boop", "la", "na", "woo", "hoo", "shu", "ditt", "dop"]
    words = string.split(" ")

    words.each do |word|
      if valid_beats.include?(word)
        list.prepend(word)
      end

    end

  end

  def reset_rate
    @rate = 500
  end

  def reset_voice
    @voice = "Boing"
  end

  def count 
    @list.count
  end

  def play 
    `say -r #{@rate} -v #{@voice} #{list.to_string}`
    @list.count
  end

  def all 
    @list.to_string
  end

end
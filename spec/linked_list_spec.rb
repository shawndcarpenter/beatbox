require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do
  it 'defines list.head as nil' do
    list = LinkedList.new
    expect(list.head).to be(nil)
  end

  it 'stores a value in @data' do
    list = LinkedList.new
    list.append("doop")
    expect(list.head.data).to eq("doop")
  end

  it 'stores nil in next_node' do
    list = LinkedList.new
    list.append("doop")
    expect(list.head.next_node).to be(nil)
  end

  it 'counts number of nodes in head' do
    list = LinkedList.new
    list.append("doop")
    expect(list.count).to eq(1)
  end

  it 'contains string of doop' do
    list = LinkedList.new
    list.append("doop")
    expect(list.to_string).to eq("doop")
  end

  it 'appends multiple nodes' do
    list = LinkedList.new
    expect(list.head).to be(nil)
    list.append("doop")
   # require 'pry';  binding.pry
    expect(list.head.next_node).to be(nil)
    expect(list.count).to eq(1)
    list.append("deep")
    expect(list.head.next_node.data).to eq("deep")
  end

  it 'counts multiple nodes' do
    list = LinkedList.new
    expect(list.head).to be(nil)
    list.append("doop")
    list.append("deep")
    #require 'pry';  binding.pry
    expect(list.count).to eq(2)
  end

  it 'stores multiple nodes data in string' do
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    #require 'pry';  binding.pry
    expect(list.to_string).to eq("doop deep")
  end

  it 'appends more than 2 nodes' do
    list = LinkedList.new
    expect(list.head).to be(nil)
    list.append("doop")
   #require 'pry';  binding.pry
    expect(list.head.next_node).to be(nil)
    expect(list.count).to eq(1)
    list.append("deep")
    expect(list.head.next_node.data).to eq("deep")
    #require 'pry';  binding.pry
    list.append("dog")
    #require 'pry';  binding.pry
    expect(list.head.next_node.next_node.data).to eq("dog")
  end

  #iteration 2

  it 'prepends dop' do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    expect(list.to_string).to eq("plop suu")
    #require 'pry';  binding.pry
    list.prepend("dop")
    #require 'pry';  binding.pry
    expect(list.to_string).to eq("dop plop suu")
  end

  it 'also counts prepends' do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    expect(list.count).to eq(3)
  end

  it 'inserts at index' do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    require 'pry';  binding.pry
    list.insert(1, "woo")
    #require 'pry';  binding.pry
    expect(list.to_string).to eq("dop woo plop suu")
  end

end

#when I call list in pry, there is an extra comma than what is in the interaction pattern
#how can i iterate over something that isnt an array?
#code only works once, cannot 
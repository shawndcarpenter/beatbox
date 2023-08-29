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
    expect(list.count).to eq(2)
  end

  it 'stores multiple nodes data in string' do
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    expect(list.to_string).to eq("doop deep")
  end

  it 'appends more than 2 nodes' do
    list = LinkedList.new
    expect(list.head).to be(nil)
    list.append("doop")
    expect(list.head.next_node).to be(nil)
    expect(list.count).to eq(1)
    list.append("deep")
    expect(list.head.next_node.data).to eq("deep")
    list.append("dog")
    expect(list.head.next_node.next_node.data).to eq("dog")
  end

  #iteration 2

  it 'prepends dop' do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    expect(list.to_string).to eq("plop suu")
    list.prepend("dop")
    expect(list.to_string).to eq("dop plop suu")
  end

  it 'also counts prepends' do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    expect(list.count).to eq(3)
  end

  it 'inserts at index 1' do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(1, "woo")
    expect(list.to_string).to eq("dop woo plop suu")
    #getting infinite loop if other than position one
  end

  it 'inserts at other index' do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(2, "woo")
    expect(list.to_string).to eq("dop plop woo suu")
  end

  it 'inserts at index 0' do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(0, "woo")
    expect(list.to_string).to eq("woo dop plop suu")
  end
  it 'finds one element at head position' do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    expect(list.to_string).to eq("deep woo shi shu blop")
    expect(list.find(0, 1)).to eq("deep")
  end

  it 'finds one element at a position' do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    expect(list.to_string).to eq("deep woo shi shu blop")
    expect(list.find(2, 1)).to eq("shi")
  end

  it 'finds multiple elements at a position' do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    expect(list.to_string).to eq("deep woo shi shu blop")
    expect(list.find(1, 3)).to eq("woo shi shu")
  end

  it 'finds multiple elements at a different position' do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    expect(list.to_string).to eq("deep woo shi shu blop")
    expect(list.find(2, 2)).to eq("shi shu")
  end

  it 'checks if list includes an element' do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    expect(list.to_string).to eq("deep woo shi shu blop")
    expect(list.includes?("deep")).to be_truthy
    expect(list.includes?("woo")).to be_truthy
    expect(list.includes?("blop")).to be_truthy
  end

  it 'checks if list does NOT include an element' do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    expect(list.to_string).to eq("deep woo shi shu blop")
    expect(list.includes?("dep")).to be(false)
  end

  it 'returns the last element' do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    expect(list.pop).to eq("blop")
  end

  it 'returns the next last element' do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    list.pop
    expect(list.pop).to eq("shu")
  end

  it 'returns string without last elements' do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    list.pop
    list.pop
    expect(list.to_string).to eq("deep woo shi")
  end

  it 'returns nil if more nodes popped than present' do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.pop
    list.pop
    list.pop
    #require "pry"; binding.pry
    list.pop
    expect(list.to_string).to eq("")
  end
end


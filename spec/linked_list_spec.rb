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
    expect(list.count).to eq(2)
  end

  it 'stores multiple nodes data in string' do
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    expect(list.to_string).to eq("doop deep")
  end

end
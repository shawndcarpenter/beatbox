require "./lib/node"

RSpec.describe Node do
  it 'saves an object of node' do
    node = Node.new("plop")
  expect(node).to eq(node)
  end

  it 'recognizes data variable' do
    node = Node.new("plop")
    expect(node.data).to eq("plop")
  end

  it 'returns nil when next node is called' do
    node = Node.new("plop")
    expect(node.next_node).to be(nil)
  end
end
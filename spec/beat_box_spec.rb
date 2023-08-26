require "./lib/beat_box"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe BeatBox do
  it 'creates an instance of beat box class' do
    bb = BeatBox.new
    #require 'pry';  binding.pry
    expect(bb).to be_instance_of(BeatBox)
  end

  it 'returns list' do
    bb = BeatBox.new
    expect(bb.list).to be_instance_of(LinkedList)
  end

  it 'stores a head with value nil' do
    bb = BeatBox.new
    expect(bb.list.head).to eq(nil)
  end

  it 'appends multiple nodes from list class' do
    bb = BeatBox.new
    bb.append("deep doo ditt")
    expect(bb.list.head.data).to eq("deep")
    expect(bb.list.head.next_node.data).to eq("doo")
  end

  it 'counts data stored in list' do
    bb = BeatBox.new
    bb.append("deep doo ditt")
    bb.append("woo hoo shu")
    expect(bb.count).to eq(6)
  end
end
require "./lib/beat_box"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe BeatBox do
  it 'creates an instance of beat box class' do
    bb = BeatBox.new
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

  #playing beats
  it 'plays' do
    bb = BeatBox.new
    bb.append("deep doo ditt woo hoo shu")
    expect(bb.list.to_string).to eq("deep doo ditt woo hoo shu")
    expect(bb.count).to eq(6)
    expect(bb.list.count).to eq(6)
    #bb.play
  end

  #iteration 4
  #validating beats
  it 'only plays valid beats' do
    bb = BeatBox.new("deep")
    expect(bb.all).to eq("deep")
    bb.append("Mississippi")
    expect(bb.all).to eq("deep")
  end

  #speed and voice

  it 'plays the 4 sounds with normal voice' do
    bb = BeatBox.new("deep dop dop deep")
    bb.play
    expect(bb.play).to eq(4)
    expect(bb.voice).to eq("Boing")
    expect(bb.rate).to eq(500)

  end
  it 'plays the 4 sounds with Daniel voice' do
    bb = BeatBox.new("deep dop dop deep")
    expect(bb.play).to eq(4)
    bb.voice = "Daniel"
    bb.rate = 100
    expect(bb.voice).to eq("Daniel")
    expect(bb.rate).to eq(100)
    bb.play
  end

  it 'resets the rate to the default value' do
    bb = BeatBox.new("deep dop dop deep")
    bb.rate = 100
    expect(bb.rate).to eq(100)
    bb.reset_rate
    expect(bb.rate).to eq(500)
  end

  it 'resets the voice to the default value' do
    bb = BeatBox.new("deep dop dop deep")
    bb.voice = "Daniel"
    expect(bb.voice).to eq("Daniel")
    bb.reset_voice
    expect(bb.voice).to eq("Boing")
    bb.reset_rate
    bb.play
  end
end
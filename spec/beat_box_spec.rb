require "./lib/beat_box"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe BeatBox do
  it "exists" do
    bb = BeatBox.new
    expect(bb).to be_a(BeatBox)
    expect(bb.list).to be_a(LinkedList)
    expect(bb.list.head).to eq(nil)
  end

  it "can append multiple nodes" do
    bb = BeatBox.new
    bb.append("deep doo ditt")
    expect(bb.list.head.data).to eq("deep")
    expect(bb.list.head.next_node.data).to eq("doo")

    bb.append("woo hoo shu")
    expect(bb.count).to eq(6)
    expect(bb.list.to_string).to eq("deep doo ditt woo hoo shu")
  end

  it "can list all the beats" do
    bb = BeatBox.new("deep")
    bb.append("Mississippi")
    bb.all
    expect(bb.all).to eq("deep")


  end
  it "can validate a beat" do
    bb = BeatBox.new("deep")
    bb.append("Mississippi")
    bb.valid_beat?("Mississippi")
    expect(bb.all).to eq("deep")

    bb.prepend("tee tee tee Mississippi")
    bb.all
    expect(bb.all).to eq("tee tee tee deep")
  end

  it "can play a beat" do
    bb = BeatBox.new("deep dop dop deep")
    bb.play
  end

  it "can change the rate" do
    bb = BeatBox.new("deep dop dop deep")
    bb.rate = 100
    bb.play
  end

  it "can change the voice" do
    bb = BeatBox.new("deep dop dop deep")
    bb.voice = "Daniel"
    bb.rate = 100
    bb.play
  end
end

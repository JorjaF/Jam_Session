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
end

require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do
  it "exists" do
    list = LinkedList.new
    expect(list).to be_a(LinkedList)
  end

  it "starts with no head" do
    list = LinkedList.new
    expect(list.head).to eq(nil)
  end

  it "can append a node" do
    list = LinkedList.new
    list.append("doop")
    expect(list.head).to be_a(Node)
    expect(list.head.data).to eq("doop")
    expect(list.head.next_node).to eq(nil)
  end

  it "can count nodes" do
    list = LinkedList.new
    list.append("doop")
    expect(list.count).to eq(1)
  end
end

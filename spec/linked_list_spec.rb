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

  it "can return a string of all data" do
    list = LinkedList.new
    list.append("doop")
    expect(list.to_string).to eq("doop")
  end

  it "can append multiple nodes" do
    list = LinkedList.new
    expect(list.head).to eq(nil)
    
    list.append("doop")
    expect(list.head.data).to eq("doop")
    expect(list.head.next_node).to eq(nil)

    list.append("deep")
    expect(list.head.next_node.data).to eq("deep")
    expect(list.head.next_node.next_node).to eq(nil)
    expect(list.count).to eq(2)
    expect(list.to_string).to eq("doop deep")
  end

  it "can prepend a node" do
    list = LinkedList.new
    list.append("plop")
    expect(list.to_string).to eq("plop")

    list.append("suu")
    list.prepend("dop")
    expect(list.to_string).to eq("dop plop suu")
    expect(list.count).to eq(3)

    list.prepend("woo")
    expect(list.to_string).to eq("woo dop plop suu")
  end

  it "can insert a node" do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(1, "woo")
    expect(list.to_string).to eq("dop woo plop suu")
  end
  
  it "can find a node" do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    list.find(2, 1)
    expect(list.find(2, 1)).to eq("shi")
  end
end
# list.to_string
# => "deep woo shi shu blop"
# > list.find(2, 1)
# => "shi"
# > list.find(1, 3)
# => "woo shi shu"
# > list.includes?("deep")
# => true
# > list.includes?("dep")
# => false
# > list.pop
# => "blop"
# > list.pop
# => "shu"
# > list.to_string
# => "deep woo shi"

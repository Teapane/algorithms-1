require './node'

describe Node do

  it "exists" do
    expect(Node).to be
  end

  it "does not have a link by default" do
    node = Node.new
    expect(node.link).to be(nil)
  end

  it "can be linked to another node" do
    node1 = Node.new
    node2 = Node.new
    node1.link = node2
    expect(node1.link).to be(node2)
  end

end

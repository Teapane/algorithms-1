require './node'

describe Node do

  it "exists" do
    expect(Node).to be
  end

  it "has a data attribute" do
    node = Node.new('hello')
    expect(node.data).to eq('hello')
  end

  it "does not have a link by default" do
    node = Node.new('hello')
    expect(node.link).to be(nil)
  end

  it "can be linked to another node" do
    node1 = Node.new('hello')
    node2 = Node.new('howdy')
    node1.link = node2
    expect(node1.link).to be(node2)
  end


end

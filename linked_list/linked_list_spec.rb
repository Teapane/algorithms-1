require './linked_list'
require 'pry'
describe LinkedList do

  it "exists" do
    expect(LinkedList).to be
  end

  context "basic adding of nodes" do
    it "has a default count of zero" do
      list = LinkedList.new
      expect(list.count).to eq(0)
    end

    it "can add an object to the list" do
      list = LinkedList.new
      expect(list.count).to eq(0)
      list.push('howdy')
      expect(list.count).to eq(1)
    end

    it "adding multiple elements increases count" do
      list = LinkedList.new
      list.push("howdy")
      list.push("hello")
      list.push("hey")
      expect(list.count).to be(3)
    end
  end

  it "remove the last element" do
    list = LinkedList.new
    list.push("howdy")
    list.push("hello")
    expect(list.count).to eq(2)
    expect(list.pop).to eq('hello')
    expect(list.count).to eq(1)
  end

  it "can shift the list with a new element" do
    list = LinkedList.new
    list.push("howdy")
    list.push("hello")
    expect(list.count).to eq(2)
    list.shift("heyo")
    expect(list.count).to eq(3)
    expect(list.head.data).to eq('heyo')
  end

  it "can unshift the list with a new element" do
    list = LinkedList.new
    list.push("howdy")
    list.push("hello")
    list.shift("heyo")
    expect(list.count).to eq(3)
    expect(list.unshift).to eq('heyo')
    expect(list.count).to eq(2)
    expect(list.head.data).to eq('howdy')
  end

  it "can add an element before an index" do
    list = LinkedList.new
    expect(list.insert_before(5, 'good day')).to be_false
    node1 = list.push("howdy")
    node2 = list.push("hello")
    node3 = list.push("heyo")
    expect(list.insert_before(5, "good day")).to be_false
    expect(list.count).to eq(3)
    node4 = list.insert_before(2, "good day")
    expect(list.count).to eq(4)
    expect(node1.link.data).to eq('good day')
    expect(node4.link.data).to eq('hello')
  end

end

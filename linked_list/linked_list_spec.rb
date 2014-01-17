require './linked_list'

describe LinkedList do
  it "exists" do
    expect(LinkedList).to be
  end

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

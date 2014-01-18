var LinkedList = require('./linkedList');

describe('linkedList', function() {

  it('has a default count of zero', function() {
    var linkedList = LinkedList;
    expect(linkedList.count).toEqual(0);
  });

  it('can add a node to the list', function() {
    var linkedList = LinkedList;
    expect(linkedList.count).toEqual(0);
    linkedList.push('howdy')
    expect(linkedList.count).toEqual(1);
  });

});

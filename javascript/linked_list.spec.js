var LinkedList = require('./linkedList');

describe('linkedList', function() {

  it('has a default count of zero', function() {
    var linkedList = new LinkedList();
    expect(linkedList.count()).toEqual(0);
  });

  it('has an undefined head by default', function() {
    var linkedList = new LinkedList();
    expect(linkedList.head).toBeUndefined();
  });

  it('can add a node to the list', function() {
    var linkedList = new LinkedList();
    expect(linkedList.count()).toEqual(0);
    linkedList.push('howdy')
    expect(linkedList.count()).toEqual(1);
  });

  it('can add multiple objects to the list', function() {
    var linkedList = new LinkedList();
    expect(linkedList.count()).toEqual(0);
    linkedList.push('howdy')
    linkedList.push('hello')
    linkedList.push('heyo')
    expect(linkedList.count()).toEqual(3);
  });

  it('can pop the last element from the list', function() {
    var linkedList = new LinkedList();
    expect(linkedList.pop()).toEqual(undefined)
    linkedList.push('howdy')
    linkedList.push('hello')
    linkedList.push('heyo')
    expect(linkedList.count()).toEqual(3);
    expect(linkedList.pop()).toEqual('heyo')
    expect(linkedList.count()).toEqual(2);
  })

});

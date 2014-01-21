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
  });

  it('can shift the beginning of an empty list with a new node', function() {
    var linkedList = new LinkedList();
    linkedList.shift('howdy')
    expect(linkedList.head.data).toEqual('howdy')
    expect(linkedList.count()).toEqual(1);
  });

  it('can shift the beginning of a list with a new node', function() {
    var linkedList = new LinkedList();
    linkedList.push('howdy')
    linkedList.push('hello')
    expect(linkedList.count()).toEqual(2);
    linkedList.shift('heyo')
    expect(linkedList.count()).toEqual(3);
  });

  it('can unshift the beginning of a list', function() {
    var linkedList = new LinkedList();
    expect(linkedList.unshift()).toBeUndefined();
    linkedList.push('howdy')
    linkedList.push('hello')
    linkedList.push('howdy')
    expect(linkedList.unshift()).toEqual('howdy');
    expect(linkedList.count()).toEqual(2);
    expect(linkedList.head.data).toEqual('hello');
  });

  it('can add an element after an index', function() {
    var linkedList = new LinkedList();
    expect(linkedList.insertAfter(2, 'hello')).toBeUndefined();
    var node1 = linkedList.push('howdy')
    var node2 = linkedList.push('hello')
    var node3 = linkedList.push('howdy')
    var node4 = linkedList.push('good day')
    var node5 = linkedList.insertAfter(2, 'good evening');
    expect(linkedList.count()).toEqual(5);
    expect(node3.link).toEqual(node5)
    expect(node5.link).toEqual(node4)
  });

});

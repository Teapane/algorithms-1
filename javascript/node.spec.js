var Node = require('./node');

describe('Node', function() {

  it('does not have a link by default', function() {
    var node = new Node('hello');
    expect(node.link).toBeUndefined();
  });

  it('can have a link set', function() {
    var node = new Node('hello');
    node.link = new Node('node');
    console.log(node.link)
    expect(node.link.data).toEqual('node')
  });

});

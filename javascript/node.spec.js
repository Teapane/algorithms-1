var Node = require('./node');

describe('Node', function() {

  it('does not have a link by default', function() {
    var node = new Node('hello');
    expect(node.data).toBeNull();
  });

});

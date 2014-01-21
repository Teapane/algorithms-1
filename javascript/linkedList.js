var Node = require('./node');

var LinkedList = function() {

  this.head = undefined;

}

LinkedList.prototype.count = function() {
  if(this.head !== undefined) {
    var counter = 1;
    var current = this.head;
    var previous = undefined;
    while (current.link !== undefined) {
      previous = current;
      current = current.link
      counter++;
    }
    return counter;
  } else {
    return 0;
  };

}

LinkedList.prototype.push = function(data) {
  if(this.head) {
    var node = new Node(data)
    current = this.head;
    previous = undefined;
    while (current.link !== undefined) {
      previous = current;
      current = current.link;
    }
    current.link = node;
    return node;
  } else {
    this.head = new Node(data);
    return this.head;
  };
}

LinkedList.prototype.pop = function() {
  if(this.head) {
    current = this.head;
    previous = undefined;
    while (current.link !== undefined) {
      previous = current;
      current = current.link;
    }
    previous.link = undefined;
    return current.data;
  } else {
    return this.head;
  };
}

LinkedList.prototype.shift = function(data) {
  if(this.head) {
    var node = new Node(data)
    current = this.head;
    node.link = current;
    this.head = node;
  } else {
    this.head = new Node(data);
    return this.head;
  };
}

LinkedList.prototype.unshift = function() {
  if(this.head) {
    current = this.head;
    this.head = current.link;
    return current.data
  } else {
    return undefined;
  };
}

LinkedList.prototype.insertAfter = function(position, data) {
  if(position < this.count()) {
    var node = new Node(data)
    var previous = undefined;
    var nodeCount = 0;
    var current = this.head;
    while (nodeCount <= position) {
      previous = current;
      current = current.link;
      nodeCount++;
    }
    previous.link = node;
    node.link = current;
    return node;
  } else {
    return undefined;
  };
}

module.exports = LinkedList;  

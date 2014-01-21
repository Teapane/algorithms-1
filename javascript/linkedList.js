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
  } else {
    this.head = new Node(data);
    return this.head;
  };
}

LinkedList.prototype.pop = function(data) {
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

module.exports = LinkedList;  

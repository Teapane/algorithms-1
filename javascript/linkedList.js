var Node = require('./node');

var LinkedList = function() {

  this.head = undefined;

}

LinkedList.prototype.count = function() {
  if(this.head !== undefined) {
    var counter = 1;
    var current = this.head;
    var previous = undefined;
      console.log(this.head)
    while (current.link !== undefined) {
      previous = current;
      current = current.link
      counter++;
    }
    return counter;
  } else {
      console.log('NOT')
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


module.exports = LinkedList;  

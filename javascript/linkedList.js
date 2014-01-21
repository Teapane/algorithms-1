var Node = require('./node');

var LinkedList = function() {

  this.head = undefined

}

LinkedList.prototype.count = function() {
  if(this.head !== undefined) {
    console.log(this.head)

    return 1;
  } else {
    console.log(this.head)
    return 0;
  };

}

LinkedList.prototype.push = function(data) {
  if(this.head) {
    // console.log('NOT SETTING')
  } else {
    this.head = new Node(data);
    // console.log('SETTING - ' + this.head.data)
    return this.head;
  };
}


module.exports = LinkedList;  

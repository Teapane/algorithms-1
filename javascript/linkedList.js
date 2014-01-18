var Node = require('./node');

var LinkedList = {

  head : null,

  count : function() {
    if(this.head) {
      return 1;
    } else {
      return 0;
    };

  }(),

  push : function(data) {
    if(this.head) {
      console.log('NOT SETTING')
    } else {
      this.head = new Node(data);
      console.log('SETTING' + this.head.data)
    };
  }
  
};

module.exports = LinkedList;  

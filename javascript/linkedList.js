var Node = require('./node');

var LinkedList = function() {

  'use strict'

  var head = null;

  this.count = function() {
    if(head === null) {
      return 0;
    } else {
      return 1;
    };

  }();

  this.push = function(data) {
    if(head === null) {
      head = new Node(data);
    } else {

    };
  };
};

module.exports = LinkedList;  

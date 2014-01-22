algorithms
==========

##Word Problem

 * __Ruby__
   
   * __minitest__ - Extends the existing exercism.io problem "wordy" to include an order of operations condition. Word Problem takes in an equation as a string with the operands as words (ex: "What is 1 plus 3 multiplied by 6") Originally, the equations were evaluated left to right. I wanted to add more functionality when set to *true*, the multiplication and division subsections of the equation are evaluated first (similar to PEMDAS).

##Binary Search Tree

 * __Ruby__

   * __minitest__ - I followed an existing test (from a Jumpstart Labs exercise) suite to TDD the process of building a binary search tree of nodes containing data. In this case the data was a number, so that the nodes were placed to the left of a node if their data was less than or equal to the data of that node, and to the right if greater. I added the *all* method to return a sorted array of all nodes in the tree.  

##Linked Lists

 * __Ruby__

   * __minitest__ - To work on learning about linked lists in Ruby, I used minitest to TDD the process of building a linked list and to apply specific behaviors to it. I started with counting the nodes in the list and adding and removing a node from the end. Then I added the push, pop, shift and unshift methods, as well as inserting a node before and after a specific index.
 
   * __RSpec__ - I took the behaviors as listed above and started the process over to TDD the list with RSpec.

 * __Javascript__ - I extended what I learned about linked lists in ruby by writing a test suite in Jasmine to TDD the linked list in Javascript.

##Prime Factors

 * __Ruby__

   * From an in-class (Jumpstart Labs) exercise on finding the prime factors for a number. I followed a given minitest test suite to TDD the process.

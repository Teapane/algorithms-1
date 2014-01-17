require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './linked_list'

class LinkedListTest < Minitest::Test

  def test_it_exists
    assert LinkedList
  end

  def test_it_has_default_count_of_zero
    # skip
    list = LinkedList.new
    assert_equal 0, list.count
  end

  def test_it_can_add_an_object_to_the_list
    # skip
    list = LinkedList.new
    assert_equal 0, list.count
    list.push("howdy")
    assert_equal 1, list.count
  end

  def test_adding_multiple_elements_increases_count
    # skip
    list = LinkedList.new
    list.push("howdy")
    list.push("hello")
    list.push("hey")
    assert_equal 3, list.count
  end

  def test_it_can_pop_the_last_element
    # skip
    list = LinkedList.new
    list.push("howdy")
    list.push("hello")
    assert_equal 2, list.count
    assert_equal "hello", list.pop
    assert_equal 1, list.count
  end

  def test_it_can_shift_the_list_with_a_new_element
    # skip
    list = LinkedList.new
    list.push("howdy")
    list.push("hello")
    assert_equal 2, list.count
    list.shift("heyo")
    assert_equal 3, list.count
    assert_equal "heyo", list.head.data
  end

  def test_it_can_unshift_the_first_element
    # skip
    list = LinkedList.new
    list.push("howdy")
    list.push("hello")
    list.shift("heyo")
    assert_equal 3, list.count
    assert_equal 'heyo', list.unshift
    assert_equal 2, list.count
    assert_equal 'howdy', list.head.data
  end

  def test_it_can_add_an_element_after_an_index
    list = LinkedList.new
    refute list.insert_after("good day", 5)
    node1 = list.push("howdy")
    node2 = list.push("hello")
    node3 = list.push("heyo")
    refute list.insert_after("good day", 5)
    assert_equal 3, list.count
    node4 = list.insert_after("good day", 2)
    assert_equal 4, list.count
    assert_equal 'good day', node2.link.data
    assert_equal 'heyo', node4.link.data
  end

  def test_it_can_add_an_element_before_an_index
    list = LinkedList.new
    refute list.insert_before("good day", 5)
    node1 = list.push("howdy")
    node2 = list.push("hello")
    node3 = list.push("heyo")
    refute list.insert_before("good day", 5)
    assert_equal 3, list.count
    node4 = list.insert_before("good day", 2)
    assert_equal 4, list.count
    assert_equal 'good day', node1.link.data
    assert_equal 'hello', node4.link.data
  end

end

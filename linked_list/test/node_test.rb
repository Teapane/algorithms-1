require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'

class NodeTest < Minitest::Test

  def test_it_exists
    assert Node
  end

  def test_it_has_data
    # skip
    node = Node.new("rollin")
    assert_equal "rollin", node.data
  end

  def test_it_has_a_nil_link_by_default
    # skip
    node = Node.new("rollin")
    refute node.link

  end

  def test_it_can_be_assigned_a_link
    # skip
    node = Node.new("rollin")
    node.link = "yeah"
    assert_equal "yeah", node.link
  end
end

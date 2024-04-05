require "minitest/autorun"
require_relative "bst"

class BstTest < Minitest::Test
    def test_node_exists
        assert_equal Node.nil?, false
    end

    def test_node_can_insert_correctly
        node = Node.new(10)
        node.insert(5)
        node.insert(15)
        node.insert(17)
        
        assert_equal node.left.data, 5
        assert_equal node.right.data, 15
        assert_equal node.right.right.data, 17
    end

    def test_contains_returns_node_with_the_same_data
        node = Node.new(10)
        node.insert(5)
        node.insert(15)
        node.insert(20)
        node.insert(0)
        node.insert(-5)
        node.insert(3)
      
        three = node.left.left.right
        assert_equal node.contains(3), three
    end

    def test_contains_returns_nil_if_value_not_found
        node = Node.new(10);
        node.insert(5)
        node.insert(15)
        node.insert(20)
        node.insert(0)
        node.insert(-5)
        node.insert(3)

        assert_nil node.contains(9999)
    end
end
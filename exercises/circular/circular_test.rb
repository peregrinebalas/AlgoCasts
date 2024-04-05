require "minitest/autorun"
require_relative "circular.rb"

class CircularTest < Minitest::Test
    def test_circular
        list = List.new
        assert_equal true, list.methods.any? {|x| x == :circular? }
    end
      
    def test_circular_detects_circular_linked_lists
        l = List.new()
        a = Node.new('a')
        b = Node.new('b')
        c = Node.new('c')
      
        l.head = a
        a.next = b
        b.next = c
        c.next = b

        assert_equal true, l.circular?
    end
      
    def test_circular_detects_circular_linked_lists_linked_at_the_head
        l = List.new()
        a = Node.new('a')
        b = Node.new('b')
        c = Node.new('c')
      
        l.head = a
        a.next = b
        b.next = c
        c.next = a
      
        assert_equal true, l.circular?
    end
      
    def test_circular_detects_noncircular_linked_lists
        l = List.new()
        a = Node.new('a')
        b = Node.new('b')
        c = Node.new('c')
      
        l.head = a
        a.next = b
        b.next = c
        c.next = nil
      
        assert_equal false, l.circular?
    end
end

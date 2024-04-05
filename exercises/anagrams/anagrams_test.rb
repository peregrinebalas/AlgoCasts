require 'minitest/autorun'
require_relative 'anagrams'

class AnagramsTest < Minitest::Test
    def test_anagrams_exists
        assert_equal Anagram.nil?, false
    end

    def test_anagram_returns_true
        assert_equal Anagram.equal?('hello', 'llohe'), true
    end

    def test_anagram_with_exclamation_points_returns_true
        assert_equal Anagram.equal?('Whoa! Hi!', 'Hi! Whoa!'), true
    end

    def test_no_anagram_returns_false
        assert_equal Anagram.equal?('One One', 'Two two two'), false
    end

    def test_match_with_appended_end_returns_false
        assert_equal Anagram.equal?('One one', 'One one c'), false
    end

    def test_partial_match_returns_false
        assert_equal Anagram.equal?('A tree, a life, a bench', 'A tree, a fence, a yard'), false
    end
end
module Anagram
    def self.equal?(word1, word2)
        word1.split('').sort == word2.split('').sort
    end
end
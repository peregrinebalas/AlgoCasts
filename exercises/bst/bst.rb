class Node
    attr_accessor :data, :left, :right

    def initialize(n)
        @data = n
        @left = nil
        @right = nil
    end

    def insert(n)
        if n > data then
            if right then
                right.insert(n)
            else
                @right = Node.new(n)
            end
        else
            if left then
                left.insert(n)
            else
                @left = Node.new(n)
            end
        end
    end

    def contains(n)
        if data == n then
            return self
        elsif n > data && right then
            right.contains(n)
        elsif n < data && left then
            left.contains(n)
        end
    end
end
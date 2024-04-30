class Node
    attr_accessor :data, :children

    def initialize(data)
        @data = data
        @children = []
    end

    def add(data)
        @children << Node.new(data)
    end

    def remove
        @children.pop
    end
end

class Tree
    attr_accessor :root

    def initialize
        @root = nil
    end

    def traverse_bf
        nodes = [this.root]

        while nodes.length > 0 do
            node = nodes.shift

            yield(node.data)

            nodes + node.children if !node.children.empty?
        end
    end

    def traverse_df
        nodes = [this.root]

        while nodes.length > 0 do
            node = nodes.shift

            yield(node.data)

            node.children + nodes if !node.children.empty?
        end
    end
end
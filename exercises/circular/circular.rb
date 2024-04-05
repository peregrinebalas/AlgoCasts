class List
    attr_accessor :head
    def initialize()
        @head = nil
    end

    def circular?
        slow = head
        fast = head
        while fast&.next&.next do
            slow = slow.next
            fast = fast.next.next
            
            if slow == fast then
                return true
            end
        end

        return false
    end
end

class Node
    attr_accessor :data, :next
    def initialize(n)
        @data = n
        @next = nil
    end
end
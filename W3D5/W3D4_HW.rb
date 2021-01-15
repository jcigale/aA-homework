class Stack
    def initialize
        @stack = []
    end

    def push(el)
        @stack.unshift(el)
    end

    def pop
        @stack.shift
    end

    def peek
        @stack[0]
    end
end

class Queue
    def initialize
        @queue = []
    end
    
    def enqueue(el)
        @queue << el
    end

    def dequeue
        @queue.shift
    end

    def peek
        @queue[0]
    end
end

class Map
    def initialize
        @map = []
    end

    def set(key, value)
        @map.each do |set|
            set[1] = value if set[0] == key
        end
        @map << [key, value]
    end

    def get(key)
        @map.each do |set|
           return set if set[0] == key
        end
    end

    def delete(key)
        @map.each_with_index do |set, idx|
            @map.delete_at(idx) if set[0] == key
        end
    end

    def show
        @map[0]
    end
end


class GraphNode
    attr_accessor :val, :neighbors

    def initialize(val)
        self.val = val
        self.neighbors = []
    end

    def add_neighbor(node)
        self.neighbors << node
    end

    def bfs(starting_node, target_value)
        level = [starting_node]
        checked = []
        until level.empty?
            node = level.shift
            if !checked.include?(node)
                return node.val if node.val == target_value
                level << node.neighbors
                checked << node
            end
        end
        nil
    end

end
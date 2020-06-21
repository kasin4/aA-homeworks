class GraphNode

    attr_accessor :val, :neighbors

  def initialize(val)
    @val = val
    @neighbors = []
  end

  def self.add_neighbor(neighbor_node)
    @neighbors << neighbor_node
  end

    def bfs(starting_node, target_value)
        queue = [starting_node]
        visited = []
        until queue.empty?
            node_check = queue.pop
            if node_check.value == target_value && !visited.include?(node_check)
                return node_check
            else
                visited << node_check
            end
            node_check.neighbors.each { |neighbor| queue.unshift(neighbor) }
        end
        nil
    end



end
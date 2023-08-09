
require 'rgl/flow'
def max_flow_fill_tank(n, s, edges, capacities)
  g = RGL::DirectedAdjacencyGraph.new
  capacities.each { |c| g.add_vertex(c) }
  edges.each { |u, v| g.add_edge(u, v) }

  flow_hash = {}
  capacities.each { |v| flow_hash[v] = Hash.new(0) }

  total_flow = 0
  g.flow do |u, v, flow|
    flow_hash[u][v] = flow
    total_flow += flow if u == s
  end
  total_flow
end


N = 4
S = 1
Edges = [[1, 2], [1, 3], [2, 4]]
Cap = [1, 1, 1, 1]

puts max_flow_fill_tank(N, S, Edges, Cap)
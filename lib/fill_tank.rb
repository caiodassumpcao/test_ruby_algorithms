
require 'rgl/flow'
def max_flow_fill_tank(n, s, edges, capacities)
  g = RGL::DirectedAdjacencyGraph.new

  #Adicionar vertices ao grafo com as respectivas capacidades
  capacities.each { |c| g.add_vertex(c) }

  #Adicionar arestas ao grafo
  edges.each { |u, v| g.add_edge(u, v) }

  flow_hash = {}
  capacities.each { |v| flow_hash[v] = Hash.new(0) }

  total_flow = 0

  #Calcular o fluxo maximo usando o algoritmo de fluxo de redes
  g.flow do |u, v, flow|
    flow_hash[u][v] = flow
    total_flow += flow if u == s
  end
  total_flow
end

#Definir os valores do problema
N = 4
S = 1
Edges = [[1, 2], [1, 3], [2, 4]]
Cap = [1, 1, 1, 1]

#Calcular o fluxo maximo usando a funçao e imprimir o resultado
puts max_flow_fill_tank(N, S, Edges, Cap)
# Graph Data Structure And Algorithms - Estrutura e algoritmos de dados gráficos

# Estrutura de dados graficos e uma estrutura de dados nao linear composta por vertices e arestas.
# Componentes de um grafico [Vertice, Aresta]


# Max Flow Problem - Fill the Tank

# encontrar a quantidade máxima de fluxo que pode ser enviado através de uma rede de tubos, canais ou outros caminhos, sujeito a restrições de capacidade.
# Usa o algoritmo de Ford-Fulkerson e a abordagem do algoritmo ingênuo ganancioso

# N - Quantidade de reservatorios
# S - Tanque de origem
# Edges - Vertices (tanques)
# Capacities - Capacidade do tanque


require ''
require ''

def max_flow_fill_tank(n, s, edges, capacities)
  g = RGL::DirectedAdjacencyGraph.new
  capacities.each
end
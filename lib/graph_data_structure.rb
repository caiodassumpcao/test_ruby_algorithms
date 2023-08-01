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
  # Criamos um grafo direcionado para representar a conexão entre os tanques.
  g = RGL::DirectedAdjacencyGraph.new

  # Iterando sobre o array capacities, que contém as capacidades dos tanques. Para cada capacidade c presente no array, adicionamos um vértice ao grafo g. Em outras palavras, cada capacidade se torna um vértice no grafo, representando um tanque
  capacities.each { |c| g.add_vertex(c) }

  #Iterando sobre o array "edges" que contem as arestas do grafo. Array com objetos de dois elementos (Primeiro elemento: Origen "u",Segundo elemento: Destino "v") representando a conexao entre os vertices (tanque)
  edges.each { |u, v| g.add_edge(u, v) }

  # Criando Hash para armazenar o fluxo entre os tanques
  flow_hash = {}

  # Iterando sobre array capacities, para cada capacidade 'v' estamos criando um novo hash vazio associado a essa capacidade
  # Para cada tanque (representado pela sua capacidade) criamos um hash vazio que sera usado para armazenar os fluxos entre os tanques
  capacities.each { |v| flow_hash[v] = Hash.new(0) }

  #
  total_flow = 0
  g.flow do |u, v, flow|
    flow_hash[u][v] = flow
    total_flow += flow if u == s
  end

end
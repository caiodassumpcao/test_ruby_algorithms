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


require '/home/caiodassumpcao/.asdf/installs/ruby/2.7.8/lib/ruby/gems/2.7.0/gems/rgl-0.6.6'

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

  # Iniciando variavel que sera usada para armazenar o fluxo total que sai do tanque de origem "s" durante a execuçao do algoritmo
  total_flow = 0

  # Utilizando o metodo FLOW do grafo 'g' para calcular o fluxo maximo do grafo
  # Determinar o fluxo entre os tanques
  g.flow do |u, v, flow|

    # atualizando o "flow_hash" com os fluxos calculados entre os tanques. Para cada aresta do fluxo maximo, atribuimos o valor do fluxo "flow" no hash "flow_hash"
    flow_hash[u][v] = flow

    # Verifica se o vertice de origem "u" e igual ao vertice de origem fornecido como entrada "s". Se sim, adcionamos o fluxo encontrado a variavel "total_flow"
    total_flow += flow if u == s
  end

  total_flow
end

N = 4
S = 1
Edges = [[1, 2], [1, 3], [2, 4]]
Cap = [1, 1, 1, 1]

puts max_flow_fill_tank(N, S, Edges, Cap)

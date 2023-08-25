def splitting_hash(jogador)
  nome = jogador[:nome]
  posicao = jogador[:posicao]
  numero = jogador[:numero]
  puts "#{nome} - #{posicao} - Camisa: #{numero}"
end


jogador = { nome: "Arthur Silva", posicao: "Atacante", numero: 9 }
splitting_hash(jogador)

def merge_to_hash(novo_jogador)
  nome = novo_jogador[0]
  posicao = novo_jogador[1]
  numero = novo_jogador[2]
  novo_jogador_merge = { nome: nome, posicao: posicao, numero: numero}
  return novo_jogador_merge
end

novo_jogador_1 = ["Caio Rodrigues", "Desenvolvedor", 99]
puts "Novo jogador adicionado ao time #{merge_to_hash(novo_jogador_1)}"
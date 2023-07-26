# O objetivo desta questão é escrever um método que receba uma lista de hashes e retorne um string.

# Array "input" com hashes como objetos
input = [
  { name: 'Maria Neusa de Aparecida', cpf: '97905796671', state: 'Sao Paulo', value: '1234'},
  { name: 'Ricardo Fontes', cpf: '44010762900', state: 'Rio Grande do Sul', value: '567'}
]


def solucao(arg)

  # Usamos o metodo "map" para iterar sobre cada hash do array "arg". Isso nos permite processar cada elemento individualmente.
  resultado = arg.map do |hash|

    # Cada linha deve ser constituida do valor de 11 campos
    nome = hash[:name].to_s[0, 11].ljust(11)
    cpf = hash[:cpf].to_s[0, 11].ljust(11)
    estado = hash[:state].to_s[0, 11].ljust(11)
    valor = hash[:value].to_s[0, 11].ljust(11)

    "Nome:#{nome}, CPF:#{cpf}, Estado:#{estado}, Valor:#{valor}"
  end
  resultado.join("\n")
end

puts solucao(input)
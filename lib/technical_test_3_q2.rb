# Extender a solução Teste3_q1 de modo que o formato do string retornado seja configurável.

require 'yaml'

input = [
  { name: 'Maria Neusa de Aparecida', cpf: '97905796671', state: 'Sao Paulo', value: '1234'},
  { name: 'Ricardo Fontes', cpf: '44010762900', state: 'Rio Grande do Sul', value: '567'}
]

def read_format_config
  config_file_path = File.expand_path('../../config/format.yaml', __FILE__)
  YAML.load_file(config_file_path)
end


def format_string(input)
  format_config = read_format_config

  input.map do |hash|
    line = ''
    format_config.each do |field, config|
      value = hash[field].to_s[0, config['length']]
      value = value.rjust(config['length'], '0') if config['padding'] == 'zeroes'
      value = value.ljust(config['length'], ' ') if config['padding'] == 'spaces'
      value = value.ljust(config['length']) if config['align'] == 'left'
      value = value.ljust(config['length']) if config['align'] == 'right'
      line += value
    end
    line
  end.join("\n")
end

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

puts format_string(input)
puts solucao(input)

puts "teste"

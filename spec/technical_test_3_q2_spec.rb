require 'rspec-rails'
require 'active_record'
require 'technical_test_3_q2'

RSpec.describe 'solucao' do
  it 'retorna o formato de string correto com formatacao configuravel' do
    input = [
      { name: 'Maria Neusa de Aparecida', cpf: '97905796671', state: 'Sao Paulo', value: '1234' },
      { name: 'Ricardo Fontes', cpf: '44010762900', state: 'Rio Grande do Sul', value: '567'}
    ]

    format_config = {
      name: { length: 15, padding: 'zeroes', aling: 'left' },
      cpf: { length: 14, padding: 'spaces', aling: 'rogth' },
      state: { length: 20, padding: 'spaces', aling: 'left' },
      value: { length: 10, padding: 'zeroes', aling: 'right'}
    }

    expected_output = "Nome:000Maria Neusa, CPF:97905796671, Estado:Sao Paulo        , Valor:001234\n" +
                  "Nome:000Ricardo Font, CPF:44010762900,  "
  end

end
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
                  "Nome:000Ricardo Font, CPF:44010762900, Estado:Rio Grande do Sul, Valor:00567"

    expect(format_config(input)).to eq(expected_output)
  end
  it 'retorna uma string vazia quando input esta vazio' do
    input = []
    format_config = {}
    expect(format_config(input)).to eq('')
  end
  it 'retorna uma string vazia quando nao ha campos definidos no formato' do
    input = [
      { name: 'Maria Neusa de Aparecida', cpf: '97905796671', state: 'Sao Paulo', value: '1234' }
    ]
    format_config = {}
    expect(format_config(input)).to eq('')
  end
end
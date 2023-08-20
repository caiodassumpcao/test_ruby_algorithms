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
      name: { length: 15,}
    }

  end

end
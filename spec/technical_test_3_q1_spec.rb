require 'rspec-rails'
require 'active_record'
require 'technical_test_3_q1'

RSpec.describe [CreateUsers, type: :model ] do
    it 'retorna o formado de string correto ' do
      input = [
        { name: 'Maria Neusa de Aparecida', cpf: '97905796671', state: 'Sao Paulo', value: '1234'},
        { name: 'Ricardo Fontes', cpf: '44010762900', state: 'Rio Grande do Sul', value: '567'}
      ]

      expected_output = "Nome:Maria Jose, CPF:97905796671, Estado:Sao Paulo, Valor:11234\n " + "Nome:Ricardo Fo, CPF:440107629, Estado:Rio Grande, Valor:567"

      expect(solucao(input)).to eq(expected_output)
    end

    it 'retorna uma mensagem de cpf nao preenchido corretamente' do
      input = [
        { name: 'Maria Neusa de Aparecida', cpf: '7984561231', state: 'Sao Paulo', value: '1234'}
      ]
    end

end

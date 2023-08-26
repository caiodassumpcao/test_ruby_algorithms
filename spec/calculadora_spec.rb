require 'calculadora'
require 'rspec-rails'

RSpec.describe 'Calculadora' do
  context '#calculadora' do
    it 'performs addition' do
      operacoes = { numero1: 5, numero2: 5, operacao: 'soma' }
      result = calculadora(operacoes)
      expect(result).to eq(10)
    end
    it 'performs subtraction' do
      operacoes = { numero1: 6, numero2: 3, operacao: 'subtracao' }
      result = calculadora(operacoes)
      expect(result).to eq(3)
    end
    it 'performs multiplication' do
      operacoes = { numero1: 2, numero2: 3, operacao: 'multiplicacao'}
    end
  end
end
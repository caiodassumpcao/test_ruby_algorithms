require 'block_argument'
require 'rspec-rails'

RSpec.describe'Block Argument Exemples' do
  context '#calculadora' do
    it 'performs addition using a block' do
      result = calculadora(2, 3) { |a, b| a + b }
      expect(result).to eq(5)
    end
    it 'performs addition using a block' do
      result = calculadora(2.8, 3.3) { |a, b| a + b }
      expect(result).to eq(6.1)
    end
  end

  context '#filtro_pares' do
    it 'filtres even numbers using a block' do
      numbers = [1, 2, 3, 4, 5, 6]
      evens = filtro_pares(numbers) { |num| num.even? }
      expect(evens).to eq([2, 4, 6])
    end
    it 'filtres even numbers using a block'do
      numbers = [1, 3, 5, 7, 9]
      evens = filtro_pares(numbers) { |num| num.even? }
      expect(evens).to eq([])
    end
  end

  context '#alterar_string' do
    it 'converts string to upcase a block' do
      result = alterar_string('hello') { |str| str.upcase }
      expect(result).to eq('HELLO')
    end

    it 'converts string to downcase a block' do
      result = alterar_string('HELLO') { |str|}
    end

  end
end
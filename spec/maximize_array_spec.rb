
require 'maximize_array'

RSpec.describe 'Maximize array' do
  describe '#maximize_array' do
    it 'Realizar k alterações no array' do
      array = [9, 8, 8, 5] # Array inicial
      k = 3
      expected_result = 20 # Resultado esperado após ordenação
      sorted_array = max_soma(array, k) # Chama a função
      expect(sorted_array).to eq(expected_result) # Compara o resultado da ordenação com o resultado esperado
    end

    it 'lida corretamente com uma lista vazia' do
      unsorted_array = [] # Array inicial vazio
      k = 3
      expected_result = [] # Resultado esperado também vazio
      sorted_array = max_soma(unsorted_array, k)
      expect(sorted_array).to eq(expected_result) # Compara o resultado da ordenação com o resultado esperado
    end
  end
end

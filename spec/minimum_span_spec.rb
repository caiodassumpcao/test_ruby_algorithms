require 'minimum_span'

RSpec.describe 'Minimum spanning' do
  describe '#minimum_span' do
    it 'Comparação de resultados do array' do
      unsorted_array = [3, 6, 2, 8, 7, 5] # Array inicial desordenado
      expected_result = 10 # Resultado esperado
      sorted_array = min_sum(unsorted_array, unsorted_array.length) # Chama a função counting_sort
      expect(sorted_array).to eq(expected_result) # Compara o resultado da ordenação com o resultado esperado
    end

    it 'lida corretamente com uma lista vazia' do
      unsorted_array = [] # Array inicial vazio
      expected_result = [] # Resultado esperado também vazio
      sorted_array = min_sum(unsorted_array, unsorted_array.length)
      expect(sorted_array).to eq(expected_result) # Compara o resultado da ordenação com o resultado esperado
    end
  end
end

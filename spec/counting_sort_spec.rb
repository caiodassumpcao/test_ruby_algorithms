
require 'counting_sort'

RSpec.describe 'Counting Sort' do
  describe '#counting_sort' do
    it 'ordena corretamente uma lista desordenada' do
      unsorted_array = [2, 9, 3, 1, 1, 8, 4, 9] # Array inicial desordenado
      expected_result = [1, 1, 2, 3, 4, 8, 9, 9] # Resultado esperado após ordenação
      sorted_array = counting_sort(unsorted_array) # Chama a função counting_sort
      expect(sorted_array).to eq(expected_result) # Compara o resultado da ordenação com o resultado esperado
    end

    it 'lida corretamente com uma lista vazia' do
      unsorted_array = [] # Array inicial vazio
      expected_result = [] # Resultado esperado também vazio
      sorted_array = counting_sort(unsorted_array)
      expect(sorted_array).to eq(expected_result) # Compara o resultado da ordenação com o resultado esperado
    end
  end
end

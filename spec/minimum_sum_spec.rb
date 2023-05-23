require 'minimum_sum'

RSpec.describe 'Minimum sum' do
  describe '#minimum_sum' do
    it 'Quando temos dois arrays e um k valido' do
      array1 = [2, 3, 4, 5, 4]
      array2 = [3, 4, 2, 3, 2]
      k = 3
      n = array1.length - 1
      expected_result = 25 # Resultado esperado após ordenação
      sorted_array = min_sum(array1, array2, n, k) # Chama a função counting_sort
      expect(sorted_array).to eq(expected_result) # Compara o resultado da ordenação com o resultado esperado
    end

    it 'returns nil, when given input arrays of different sizes and k' do
      array1 = [1, 2, 3, 4]
      array2 = [1, 2, 3]
      n = array1.length - 1
      k = 3

      expect(min_sum(array1, array2, n, k)).to be_nil
    end
  end
end

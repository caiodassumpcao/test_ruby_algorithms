require 'bubble_sort'

RSpec.describe 'Bubble Sort' do
  describe '#bubblesort' do
    it 'ordena corretamente uma lista desordenada' do
      unsorted_array = [6, 3, 0, 5] #Arrey inicial
      expected_result = [0, 3, 5, 6] #Resultado esperado
      sorted_array = bubblesort(unsorted_array, unsorted_array.length) #Chama a função bubblesort
      expect(sorted_array).to eq(expected_result) #Comparando resultado do teste "sorted_array" com "expected_result"
    end

    it 'lida corretamente com uma lista vazia' do
      unsorted_array = [] #Array inicial vazio
      expected_result = [] #Resultado esperado
      sorted_array = bubblesort(unsorted_array, unsorted_array.length)
      expect(sorted_array).to eq(expected_result) #Comparando resultado do teste "sorted_array" com "expected_result"
    end

    it 'mantém inalterada uma lista já ordenada' do
      unsorted_array = [1, 2, 3, 4, 5] #Array inicial ordenado
      expected_result = [1, 2, 3, 4, 5]#Resultado esperado
      sorted_array = bubblesort(unsorted_array, unsorted_array.length)
      expect(sorted_array).to eq(expected_result)#Comparando resultado do teste "sorted_array" com "expected_result"
    end

    it 'lida corretamente com elementos repetidos' do
      unsorted_array = [5, 2, 5, 1, 2] #Array inicial com elementos repetidos
      expected_result = [1, 2, 2, 5, 5]#Resultado esperado
      sorted_array = bubblesort(unsorted_array, unsorted_array.length)
      expect(sorted_array).to eq(expected_result)#Comparando resultado do teste "sorted_array" com "expected_result"
    end
  end
end

require 'reverse_array'

RSpec.describe 'reverse_array' do
  context 'when given an array and k' do
    it 'reverses the array to the right by k elements' do
      array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
      k = 3
      expect(reverse_array(array, k)).to eq([8, 9, 10, 1, 2, 3, 4, 5, 6, 7])
    end
  end

  context 'when given an empty array' do
    it 'returns an empty array' do
      array = []
      k = 3
      expect(reverse_array(array, k)).to eq([])
    end
  end

  context 'when given k larger than the array length' do
    it 'reverses the array completely' do
      array = [1, 2, 3, 4, 5]
      k = 1
      expect(reverse_array(array, k)).to eq([5, 1, 2, 3, 4])
    end
  end
end
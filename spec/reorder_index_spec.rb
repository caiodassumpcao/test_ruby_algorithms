require 'reorder_index'


RSpec.describe 'reorder' do
  context 'when given an array and index with same length' do
    it 'reorders the array according to the given indexes' do
      array = [50, 40, 70, 60, 90]
      index = [3, 0, 4, 1, 2]
      n = array.length
      reorder(array, index, n)
      expect(array).to eq([40, 60, 90, 50, 70])
    end
  end

  context 'when given an array and index with different lengths' do
    it 'raises an error' do
      array = [50, 40, 70, 60, 90]
      index = [3, 0, 4, 1]
      n = array.length
      expect { reorder(array, index, n) }.to raise_error(ArgumentError, 'Arrays must have the same length')
    end
  end

  context 'when given an empty array and index' do
    it 'does not modify the arrays' do
      array = []
      index = []
      n = array.length
      reorder(array, index, n)
      expect(array).to eq([])
      expect(index).to eq([])
    end
  end
end
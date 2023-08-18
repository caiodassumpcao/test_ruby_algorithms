require 'fibonacci_search'
RSpec.describe '#fibonacci_search' do
  let(:array) { [2, 3, 4, 10, 40] }
  let(:n) { array.length }

  context 'when the number is present in the array' do
    it 'returns the index of the number' do
      x = 10
      expect(fibonacci_search(array, n, x)).to eq(3)
    end

    it 'returns the index of the first occurrence when there are duplicates' do
      array = [2, 3, 10, 10, 10, 40]
      x = 10
      expect(fibonacci_search(array, n, x)).to eq(2)
    end
  end

  context 'when the number is not present in the array' do
    it 'returns -1' do
      x = 5
      expect(fibonacci_search(array, n, x)).to eq(-1)
    end
  end

  context 'when the array is empty' do
    it 'returns -1' do
      array = []
      n = array.length
      x = 10
      expect(fibonacci_search(array, n, x)).to eq(-1)
    end
  end
end



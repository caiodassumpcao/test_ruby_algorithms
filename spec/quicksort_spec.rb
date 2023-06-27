require 'quicksort'

RSpec.describe 'Quicksort' do
  describe '#quicksort' do
    it 'sorts an array in ascending order' do
      array = [1, 5, 7, 8, 9, 10]
      sorted_array = quicksort(array)
      expect(sorted_array).to eq([1, 5, 7, 8, 9, 10])
    end

    it 'sorts an array with duplicate elements' do
      array = [5, 2, 1, 3, 5, 4]
      sorted_array = quicksort(array)
      expect(sorted_array).to eq([1, 2, 3, 4, 5, 5])
    end

    it 'sorts a reversed array' do
      array = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
      sorted_array = quicksort(array)
      expect(sorted_array).to eq([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
    end

    it 'sorts an array with negative numbers' do
      array = [-5, 10, -3, 0, 2, -7]
      sorted_array = quicksort(array)
      expect(sorted_array).to eq([-7, -5, -3, 0, 2, 10])
    end
  end
end

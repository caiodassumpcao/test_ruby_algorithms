require 'merge_sort'

RSpec.describe 'Merge Sort' do
  describe '#merge_sort' do
    it 'sorts the array in ascending order' do
      array = [12, 11, 13, 5, 6, 7]
      expected_result = [5, 6, 7, 11, 12, 13]

      merge_sort(array, 0, array.length - 1)

      expect(array).to eq(expected_result)
    end

    it 'sorts an empty array' do
      array = []
      expected_result = []

      merge_sort(array, 0, array.length - 1)

      expect(array).to eq(expected_result)
    end

    it 'sorts an array with a single element' do
      array = [1]
      expected_result = [1]

      merge_sort(array, 0, array.length - 1)

      expect(array).to eq(expected_result)
    end
  end
end
require 'positive_negative'

RSpec.describe 'rearrange' do
  context 'when given an array with positive and negative elements' do
    it 'rearranges positive and negative elements correctly' do
      array = [1, -3, 5, 6, -3, 6, 7, -4, 9, 10]
      rearrange(array, array.length)
      expect(array).to eq([1, -3, 5, -3, 6, 6, 7, -4, 9, 10])
    end
  end

  context 'when given an array with only positive elements' do
    it 'does not rearrange the array' do
      array = [1, 3, 5, 7, 9]
      rearrange(array, array.length)
      expect(array).to eq([1, 3, 5, 7, 9])
    end
  end

  context 'when given an array with only negative elements' do
    it 'does not rearrange the array' do
      array = [-2, -4, -6, -8]
      rearrange(array, array.length)
      expect(array).to eq([-2, -4, -6, -8])
    end
  end
end
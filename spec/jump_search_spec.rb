require 'jump_search'

RSpec.describe 'Jump Search' do
  describe '#jump_search' do
    context 'when the element is present in the array' do
      it 'returns the index of the element' do
        array = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610]
        x = 55
        n = array.length - 1

        expect(jump_search(array, x, n)).to eq(10)
      end
    end

    context 'when the element is not present in the array' do
      it 'returns -1' do
        array = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610]
        x = 100
        n = array.length - 1

        expect(jump_search(array, x, n)).to eq(-1)
      end
    end
  end
end
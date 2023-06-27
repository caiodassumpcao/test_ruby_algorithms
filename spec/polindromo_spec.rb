require 'polindromo'

RSpec.describe 'Polindromo' do
  describe '#is_palindrome?' do
    context 'when the word is a palindrome' do
      it 'returns true' do
        word = 'radar'

        result = is_palindrome?(word)

        expect(result).to be true
      end
    end

    context 'when the word is not a palindrome' do
      it 'returns false' do
        word = 'hello'

        result = is_palindrome?(word)

        expect(result).to be false
      end
    end
  end
end

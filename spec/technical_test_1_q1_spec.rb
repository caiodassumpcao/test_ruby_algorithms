require 'technical_test_1_q1'

RSpec.describe '#Palindromos' do
  describe '#verify_palindr' do
    context 'when the whord is a palindrome' do
      it 'returns true' do
        palavra = 'ovo'
        result = verify_palindr(palavra)

        expect(result).to be true
      end
    end
    context '' do

    end
  end
end
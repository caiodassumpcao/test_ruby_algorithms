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
    context 'when the word is not a palindrome' do
      it 'return false' do
        palavra = 'Areia'
        result = verify_palindr(palavra)

        expect(result).to be false
      end
    end

    context 'when the word has number' do
      before do
        allow_any_instance_of(Kernel).to receive(:gets).and_return("racecar123\n", "racecar\n")

      end

      end
    end
end
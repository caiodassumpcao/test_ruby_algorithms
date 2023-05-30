
require 'count_char_pangram'

RSpec.describe '#pangram' do
  context 'when the string is a pangram' do
    it 'returns true and the missing letters' do
      string = "The quick brown fox jumps over the lazy dog"

      expect { pangram(string) }.to output("Essa string é pangram: #{string}\nfaltaram 0 letras\nSegue letras que faltaram: []\n").to_stdout
    end
  end
end

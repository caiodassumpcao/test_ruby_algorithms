require 'technical_test_2_q1'

RSpec.describe 'Divisor Comum' do
  describe '#array_intervalo' do
    context 'when the number is positive'  do
      it 'retorna o invervalo do array' do
        result = array_intervalo(1, 5)
        expect(result).to eq([1, 2, 3, 4, 5])
      end
    end
  end
  describe '#divisor_comum' do
    context '' do

    end

  end
end
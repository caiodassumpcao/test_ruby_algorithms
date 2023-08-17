require 'technical_test_2_q1'

RSpec.describe 'Divisor Comum' do
  context '#array_intervaloe'  do
    it 'retorna o invervalo do array' do
      result = array_intervalo(1, 5)
      expect(result).to eq([1, 2, 3, 4, 5])
    end
  end

  context 'divisor_comum' do
    it 'retorna os numeros divisiveis no intervalo' do
      result = divisor_comum(1, 10, 2)
      expect(result).to eq([4, 6, 8, 10])
    end

    it 'return a nill array when x = y' do
      result = dividor_comum(5, 5, 2)
      expect(result).to eq([])
    end

    it 'return a array_intervalo when divisor comum = 0'
    result = divisor_comum(1, 10, 0)
    expect(result).to eq([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
  end
end


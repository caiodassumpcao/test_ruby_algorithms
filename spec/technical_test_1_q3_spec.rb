require 'technical_test_1_q3'

RSpec.describe '#Fatorial' do
  context 'Quando o numero e positivo' do
    it 'return true' do
      allow_any_instance_of(Object).to receive(:gets).and_return("5\n")
      expect { fatorial(x) }.to output("5! = 120\n").to_stdout
    end
  end

  context 'Quando o nnumero e negativo' do
    it 'return false' do
      allow_any_instance_of(Object).to receive(:gets).and_return("-3\n")
      expect { fatorial(x) }.to output(/Numero Inalido, digite um numero positivo maior que zero/).to_stdout
    end
  end

  context 'Quando o numero e zero' do
    it 'calcular fatorial corretamente' do
      allow_any_instance_of(Object).to receive(:gets).and_return("1\n")
      expect { fatorial(x) }.to output("0! = 1\n").to_stdout
    end
  end

end
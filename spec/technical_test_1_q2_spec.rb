require 'technical_test_1_q2'


RSpec.describe '#Validar_CPF' do
  describe '#valida_cpf_formatado' do
      it 'return true' do
        valid_cpf = '123.456.789-00'
        expect(valida_cpf_formatado(valid_cpf)).to be true

      end
      it 'returne false for invalid formatted CPF' do
        invalid_cpf = '123.456.789-AB'
        expect(valida_cpf_formatado(invalid_cpf)).to be false
      end

      it 'returns false for CPF whithout formatting' do
        invalid_cpf = '12345678900'
        expect(valida_cpf_formatado(invalid_cpf)).to be false
      end

      it ' returns false for valid format with incorrect digits' do
        valid_cpf = '123.456.789-10'
        assert(valida_cpf_formatado(valid_cpf) == false)
      end
  end
end
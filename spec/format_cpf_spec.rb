require 'format_cpf'
require 'rspec-rails'

RSpec.describe 'Formate CPF' do
  context '#formate_cpf' do
    it 'Check cpf formatting' do
      cpf = '12345678900'
      result = formate_cpf(cpf)

      expect(result).to eq("123.456.789-00")
    end

    it 'When the CPF has fewer numbers than necessary' do
      cpf = '123456789'
      result = formate_cpf(cpf)

      expect(result).to eq("CPF invalido, digite o cpf novamente!")
    end
    it 'When the CPF has more numbers than necessary' do
      cpf = '123456789000'
      result = formate_cpf(cpf)

      expect(result).to eq("CPF invalido, digite o cpf novamente!")
    end
  end

  context '#contagem_charac' do
    it 'returns true for special characters' do
      char = '@'
      result = contagem_charac(char)

      expect(result).to eq(true)
    end

    it 'returns false for number' do
      char = '3'
      result = contagem_charac(char)

      expect(result).to eq(false)
    end

    it 'return false for whitespace' do
      char = ' '
      result = contagem_charac(char)

      expect(result).to eq(false)
    end
  end

  context  '#remove_special_charac' do
    it 'remove special characters from CPF' do
      cpf = "1234#56879@00"
      result = remove_special_charac(cpf)

      expect(result).to eq('12345687900')
    end

    it 'keeps digits and spaces intact' do
      cpf = '12 3 5678900'
      result = remove_special_charac(cpf)

      expect(result).to eq('12 34 5678900')
    end
  end
end
require 'format_name'
require 'rspec-rails'

RSpec.describe '#formate_name' do
  context 'Formate Name' do
    it 'formats a name' do
      opcoes = { primeiro_nome: 'Caio', segundo_nome: 'Rodrigues' }
      result = formate_name(opcoes)

      expect(result).to eq('Rodrigues, Caio')
    end

    it 'formats another name' do
      opcoes = { primeiro_nome: 'Thomy', segundo_nome: 'Shelby' }
      result = formate_name(opcoes)

      expect(result).to eq('Shelby, Thomy')
    end
  end
end
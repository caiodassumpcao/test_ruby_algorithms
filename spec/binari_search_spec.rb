require 'binari_search'

RSpec.describe 'Pesquisa binária' do
  describe '#busca_binaria' do
    it 'retorna o índice correto do número encontrado' do
      expect(busca_binaria([10, 20, 30, 50, 60, 80, 110, 130, 140, 170], 30)).to eq(2)
      expect(busca_binaria([10, 20, 30, 50, 60, 80, 110, 130, 140, 170], 140)).to eq(8)
      expect(busca_binaria([10, 20, 30, 50, 60, 80, 110, 130, 140, 170], 90)).to eq(-1)
    end

    it 'retorna -1 para um array vazio' do
      expect(busca_binaria([], 10)).to eq(-1)
    end
  end
end

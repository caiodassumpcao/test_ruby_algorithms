require 'choice_book'

RSpec.describe 'Escolha de Livro' do
  describe '#choose_book' do
    context 'quando o livro desejado é "Mais esperto que o diabo"' do
      it 'exibe a mensagem de livro encontrado' do
        expect { choose_book("Mais esperto que o diabo") }.to output("Livro encontrado, no armário da cabeceira\n").to_stdout
      end
    end

    context 'quando o livro desejado é "O poder da ação"' do
      it 'exibe a mensagem de livro não encontrado' do
        expect { choose_book("O poder da ação") }.to output("Livro não encontrado\n").to_stdout
      end
    end

    context 'quando o livro desejado não está na lista' do
      it 'exibe a mensagem de livro não disponível' do
        expect { choose_book("Outro livro") }.to output("Não temos esse livro\n").to_stdout
      end
    end
  end
end

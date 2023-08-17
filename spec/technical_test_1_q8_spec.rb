require 'rspec-rails'
require 'technical_test_1_q8'

RSpec.describe 'Exemplo' do
  describe  '#metodo1' do
    it 'imprime a mensagem do metodo 1' do
      exemplo = Exemplo.new
      expect { exemplo.metodo1 }.to output("Este e o metodo 1\n").to_stdout
    end
  end

  describe '#metodo2' do
    it 'chama o metodo 1 usando self' do
      exemplo = Exemplo.new
      expect { exemplo.metodo2 }.to output("Este e o metodo 1\n").to_stdout
    end
  end

  describe '.metodo_de_classe' do
    it 'Imprime a mensagem do metodo de classe' do
      expect { Exemplo.metodo_de_classe }.to output("Este e um metodo de classe\n").to_stdout
    end
  end

  describe  do
    it 'Imprime a variavel de classe' do
      expect { Exemplo.metodo_de_classe }.to output("Variavel de clasee\n").to_stdout
    end
  end
end


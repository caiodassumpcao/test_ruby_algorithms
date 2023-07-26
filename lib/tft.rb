# frozen_string_literal: true
class TFTProbabilidade
  def initialize
    @custos = {
      1 => [39, 1.0],
      2 => [26, 0.0],
      3 => [21, 0.0],
      4 => [13, 0.0],
      5 => [10, 0.0]
    }

    @probabilidades = {
      1 => { 1 => 1.0, 2 => 0, 3 => 0, 4 => 0, 5 => 0 },
      2 => { 1 => 1.0, 2 => 0, 3 => 0, 4 => 0, 5 => 0 },
      3 => { 1 => 0.7, 2 => 0.25, 3 => 0.05, 4 => 0, 5 => 0 },
      4 => { 1 => 0.5, 2 => 0.35, 3 => 0.15, 4 => 0, 5 => 0 },
      5 => { 1 => 0.5, 2 => 0.35, 3 => 0.15, 4 => 0, 5 => 0 },
      6 => { 1 => 0.25, 2 => 0.35, 3 => 0.3, 4 => 0.1, 5 => 0 },
      7 => { 1 => 0.2, 2 => 0.3, 3 => 0.33, 4 => 0.15, 5 => 0.02 },
      8 => { 1 => 0.15, 2 => 0.2, 3 => 0.35, 4 => 0.24, 5 => 0.06 },
      9 => { 1 => 0.1, 2 => 0.15, 3 => 0.3, 4 => 0.3, 5 => 0.15 }
    }
  end
  def calcular_probabilidade(nivel, custo, quantidade_tabuleiro)
    nivel = nivel.clamp(1, 9)
    custo = custo.clamp(1, 5)
    quantidade_total = @custos[custo][0]

    if quantidade_total > 0
      if @probabilidades[nivel][custo]
        probabilidade_nivel_custo = @probabilidades[nivel][custo]
        probabilidade_final = (quantidade_tabuleiro.to_f / quantidade_total) * probabilidade_nivel_custo
        probabilidade_final *= 100.0
        puts "A probabilidade de aparecer a peça de custo #{custo} no nível #{nivel} é de #{probabilidade_final.round(2)}%."
      else
        puts 'Combinação de nível e custo inválida.'
      end
    else
      puts "N~ao ha peças do custo #{custo} no tabuleiro"
    end
  end
end
custo_1 = ["Cassiopeia", "Chogath", "Irelia", "Jhin", "Kayle", "Malzahar", "Maokai", "Orianna", "Poppy", "Renekton", "Samira", "Tristana", "Viego"]
custo_2 = ["Ashe", "Galio", "Jinx", "Kassadin", "Kled", "Sett", "Soraka", "Swain", "Thaliyah", "Teemo", "Vi", "Warwick", "Zed"]
custo_3 = ["Akshan", "Darius", "Ekko", "Garen", "Jayce", "Kalista", "Karma", "Katarina", "Lissandra", "Reksai", "Sona", "Taric", "Velkoz"]
custo_4 = ["Aphelios", "Aazir", "Gwen", "JarvanIV", "Kaisa", "Lux", "Nasus", "Sejuani", "Shen", "Urgot", "Yasou", "Zeri"]
custo_5 = ["Aatrox", "Ahri", "Belveth", "Heimerdinger", "Ksant", "Ryze", "Senna", "Sion"]

tft_probabilidade = TFTProbabilidade.new

puts "Qual e o seu nivel atual?"
nivel = gets.chomp.to_i

puts "Qual o custo da peça? (1 a 5)"
custo = gets.chomp.to_i

puts "Quantas peças existem no tabuleiro?"
quantidade_tabuleiro = gets.chomp.to_i

tft_probabilidade.calcular_probabilidade(nivel, custo, quantidade_tabuleiro)
def probabilidade

end

class Unidades_total
  attr_accessor :unidades

  def initialize
    @unidades = {}
  end
  def add_unidades(nome_und, quantidade_total)
    @unidades[nome_und] = quantidade_total
  end

  def probabilidade_aparecer(nome_und, quantidade_tabuleiro, custo, nivel)
    puts "qual seu Nivel autal?"
    nivel = gets.chomp.to_i

    puts "Qual a unidade?"
    nome_und = gets.chomp.to_i

    puts "Quantas peças tem no tabuleiro"
    quantidade_tabuleiro = gets.chomp.to_i


    if nivel == 1
      if custo == 1
        quantidade_tabuleiro = 39
        probabilidade_custo = 1
        probabilidade_final = (quantidade_tabuleiro / quantidade_total) * probabilidade_custo
      end
      if custo == 2
        quantidade_tabuleiro = 26
        probabilidade_custo = 0
        probabilidade_final = (quantidade_tabuleiro / quantidade_total) * probabilidade_custo
      end
      if custo == 3
        quantidade_tabuleiro = 21
        probabilidade_custo = 0
        probabilidade_final = (quantidade_tabuleiro / quantidade_total) * probabilidade_custo
      end
      if custo == 4
        quantidade_tabuleiro = 13
        probabilidade_custo = 0
        probabilidade_final = (quantidade_tabuleiro / quantidade_total) * probabilidade_custo
      end
      if custo == 5
        quantidade_tabuleiro = 10
        probabilidade_custo = 0
        probabilidade_final = (quantidade_tabuleiro / quantidade_total) * probabilidade_custo
      end
    end
    if nivel == 2
      if custo == 1
        quantidade_tabuleiro = 39
        probabilidade_custo = 1
        probabilidade_final = (quantidade_tabuleiro / quantidade_total) * probabilidade_custo
      end
      if custo == 2
        quantidade_tabuleiro = 26
        probabilidade_custo = 0
        probabilidade_final = (quantidade_tabuleiro / quantidade_total) * probabilidade_custo
      end
      if custo == 3
        quantidade_tabuleiro = 21
        probabilidade_custo = 0
        probabilidade_final = (quantidade_tabuleiro / quantidade_total) * probabilidade_custo
      end
      if custo == 4
        quantidade_tabuleiro = 13
        probabilidade_custo = 0
        probabilidade_final = (quantidade_tabuleiro / quantidade_total) * probabilidade_custo
      end
      if custo == 5
        quantidade_tabuleiro = 10
        probabilidade_custo = 0
        probabilidade_final = (quantidade_tabuleiro / quantidade_total) * probabilidade_custo
      end
    end
    if nivel == 3
      if custo == 0.37
        quantidade_tabuleiro = 39
        probabilidade_custo = 0.65
        probabilidade_final = (quantidade_tabuleiro / quantidade_total) * probabilidade_custo
      end
      if custo == 2
        quantidade_tabuleiro = 26
        probabilidade_custo = 0.30
        probabilidade_final = (quantidade_tabuleiro / quantidade_total) * probabilidade_custo
      end
      if custo == 3
        quantidade_tabuleiro = 21
        probabilidade_custo = 0.05
        probabilidade_final = (quantidade_tabuleiro / quantidade_total) * probabilidade_custo
      end
      if custo == 4
        quantidade_tabuleiro = 13
        probabilidade_custo = 0
        probabilidade_final = (quantidade_tabuleiro / quantidade_total) * probabilidade_custo
      end
      if custo == 5
        quantidade_tabuleiro = 10
        probabilidade_custo = 1
        probabilidade_final = (quantidade_tabuleiro / quantidade_total) * probabilidade_custo
      end
    end
    if nivel == 4
      if custo == 1
        quantidade_tabuleiro = 39
        probabilidade_custo = 0.50
        probabilidade_final = (quantidade_tabuleiro / quantidade_total) * probabilidade_custo
      end
      if custo == 2
        quantidade_tabuleiro = 26
        probabilidade_custo = 0.35
        probabilidade_final = (quantidade_tabuleiro / quantidade_total) * probabilidade_custo
      end
      if custo == 3
        quantidade_tabuleiro = 21
        probabilidade_custo = 0.15
        probabilidade_final = (quantidade_tabuleiro / quantidade_total) * probabilidade_custo
      end
      if custo == 4
        quantidade_tabuleiro = 13
        probabilidade_custo = 0
        probabilidade_final = (quantidade_tabuleiro / quantidade_total) * probabilidade_custo
      end
      if custo == 5
        quantidade_tabuleiro = 10
        probabilidade_custo = 0
        probabilidade_final = (quantidade_tabuleiro / quantidade_total) * probabilidade_custo
      end
    end
    if nivel == 5
      if custo == 1
        quantidade_tabuleiro = 39
        probabilidade_custo = 0.37
        probabilidade_final = (quantidade_tabuleiro / quantidade_total) * probabilidade_custo
      end
      if custo == 2
        quantidade_tabuleiro = 39
        probabilidade_custo = 0.35
        probabilidade_final = (quantidade_tabuleiro / quantidade_total) * probabilidade_custo
      end
      if custo == 3
        quantidade_tabuleiro = 39
        probabilidade_custo = 0.25
        probabilidade_final = (quantidade_tabuleiro / quantidade_total) * probabilidade_custo
      end
      if custo == 4
        quantidade_tabuleiro = 39
        probabilidade_custo = 0.03
        probabilidade_final = (quantidade_tabuleiro / quantidade_total) * probabilidade_custo
      end
      if custo == 5
        quantidade_tabuleiro = 10
        probabilidade_custo = 0
        probabilidade_final = (quantidade_tabuleiro / quantidade_total) * probabilidade_custo
      end
    end
    if nivel == 6
      if custo == 1
        quantidade_tabuleiro = 39
        probabilidade_custo = 0.245
        probabilidade_final = (quantidade_tabuleiro / quantidade_total) * probabilidade_custo
      end
      if custo == 2
        quantidade_tabuleiro = 39
        probabilidade_custo = 0.35
        probabilidade_final = (quantidade_tabuleiro / quantidade_total) * probabilidade_custo
      end
      if custo == 3
        quantidade_tabuleiro = 39
        probabilidade_custo = 0.30
        probabilidade_final = (quantidade_tabuleiro / quantidade_total) * probabilidade_custo
      end
      if custo == 4
        quantidade_tabuleiro = 39
        probabilidade_custo = 0.10
        probabilidade_final = (quantidade_tabuleiro / quantidade_total) * probabilidade_custo
      end
      if custo == 5
        quantidade_tabuleiro = 10
        probabilidade_custo = 0.005
        probabilidade_final = (quantidade_tabuleiro / quantidade_total) * probabilidade_custo
      end
    end
    if nivel == 7
      if custo == 1
        quantidade_tabuleiro = 39
        probabilidade_custo = 0.20
        probabilidade_final = (quantidade_tabuleiro / quantidade_total) * probabilidade_custo
      end
      if custo == 2
        quantidade_tabuleiro = 39
        probabilidade_custo = 0.30
        probabilidade_final = (quantidade_tabuleiro / quantidade_total) * probabilidade_custo
      end
      if custo == 3
        quantidade_tabuleiro = 39
        probabilidade_custo = 0.33
        probabilidade_final = (quantidade_tabuleiro / quantidade_total) * probabilidade_custo
      end
      if custo == 4
        quantidade_tabuleiro = 39
        probabilidade_custo = 0.15
        probabilidade_final = (quantidade_tabuleiro / quantidade_total) * probabilidade_custo
      end
      if custo == 5
        quantidade_tabuleiro = 10
        probabilidade_custo = 0.2
        probabilidade_final = (quantidade_tabuleiro / quantidade_total) * probabilidade_custo
      end
    end
    if nivel == 8
      if custo == 1
        quantidade_tabuleiro = 39
        probabilidade_custo = 0.15
        probabilidade_final = (quantidade_tabuleiro / quantidade_total) * probabilidade_custo
      end
      if custo == 2
        quantidade_tabuleiro = 39
        probabilidade_custo = 0.25
        probabilidade_final = (quantidade_tabuleiro / quantidade_total) * probabilidade_custo
      end
      if custo == 3
        quantidade_tabuleiro = 39
        probabilidade_custo = 0.35
        probabilidade_final = (quantidade_tabuleiro / quantidade_total) * probabilidade_custo
      end
      if custo == 4
        quantidade_tabuleiro = 39
        probabilidade_custo = 0.20
        probabilidade_final = (quantidade_tabuleiro / quantidade_total) * probabilidade_custo
      end
      if custo == 5
        quantidade_tabuleiro = 10
        probabilidade_custo = 0.05
        probabilidade_final = (quantidade_tabuleiro / quantidade_total) * probabilidade_custo
      end
    end
    if nivel == 9
      if custo == 1
        quantidade_tabuleiro = 39
        probabilidade_custo = 0.10
        probabilidade_final = (quantidade_tabuleiro / quantidade_total) * probabilidade_custo
      end
      if custo == 2
        quantidade_tabuleiro = 39
        probabilidade_custo = 0.15
        probabilidade_final = (quantidade_tabuleiro / quantidade_total) * probabilidade_custo
      end
      if custo == 3
        quantidade_tabuleiro = 39
        probabilidade_custo = 0.35
        probabilidade_final = (quantidade_tabuleiro / quantidade_total) * probabilidade_custo
      end
      if custo == 4
        quantidade_tabuleiro = 39
        probabilidade_custo = 0.30
        probabilidade_final = (quantidade_tabuleiro / quantidade_total) * probabilidade_custo
      end
      if custo == 5
        quantidade_tabuleiro = 10
        probabilidade_custo = 0.10
        probabilidade_final = (quantidade_tabuleiro / quantidade_total) * probabilidade_custo
      end
    end
  end

end
custo_1 = ["Cassiopeia", "Chogath", "Irelia", "Jhin", "kayle", "Malzahar", "Maokai", "Orianna", "Poppy", "Renekton", "Samira", "Tristana", "Viego"]
custo_2 = ["Ashe", "Galio", "Jinx", "Kassadin", "Kled", "Sett", "Soraka", "Swain", "Thaliyah", "Teemo", "Vi", "Warwick", "Zed"]
custo_3 = ["Akshan", "Darius", "Ekko", "Garen", "Jayce", "Kalista", "Karma", "Katarina", "Lissandra", "Reksai", "Sona", "Taric", "Velkoz"]
custo_4 = ["Aphelios", "Azir", "Gwen", "JarvanIV", "Kaisa", "Lux", "Nasus", "Sejuani", "Shen", "Urgot", "Yasou", "Zeri"]
custo_5 = ["Aatrox", "Ahri", "Belveth", "Heimerdinger", "Ksant", "Ryze", "Senna", "Sion"]



def contagem_drink(bebidas)
  bebidas = { cerveja: 5, vodka: 30, whisk: 50, gin: 45 }
  puts "Escolha a bebida: "
  escolha = gets.chomp

end

class Bebidas
  @custo_bebida = 0
  def cerveja
    @custo_bebda = 5.0
    return @custo_bebda
  end
  def vodka
    @custo_bebda = 30.0
    return @custo_bebda
  end
  def whisk
    @custo_bebda = 60.0
    return @custo_bebda
  end
  def gin
    @custo_bebda = 45.0
    return @custo_bebda
  end
end

def contagem
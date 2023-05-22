# Pesquisa binária

def busca_binaria(array, alvo)
  inicio = 0
  tamanho = array.length
  fim = tamanho - 1

  while inicio <= fim
    meio = (inicio + fim) / 2

    if array[meio] == alvo
      return meio
    elsif array[meio] < alvo
      inicio = meio + 1
    else
      fim = meio - 1
    end
  end

  return -1
end

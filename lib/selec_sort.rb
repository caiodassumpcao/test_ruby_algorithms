#Algoritmo de Ordenação por seleção
# A classificação por seleção é um algoritmo de classificação simples e eficiente que funciona selecionando repetidamente o menor (ou maior) elemento da parte não classificada da lista e movendo-o para a parte classificada da lista.
# Ordena a lista comparando 2 elementos adjacentes e movendo a posição

# 1° - Inicialize o valor minimo (min_idx) para o local 0
# 2° - Percorrer e encontrar o elemento minimo da matriz
# 3° - Se algum algoritmo percorrido do array for menor que (min_idx) troque a posição dos dois elementos
# 4° - Repita até a matriz se classificar

def select_sort(array)
  n = array.length

  (0...n-1).each do |i|
    min_idx = i
    (i+1...n).each do |j|
      if array[j] < array[min_idx]
        min_idx = j
      end
    end

    if min_idx != i
      array[i], array[min_idx] = array[min_idx], array[i]
    end
  end

  return array
end

def print_array(array)
  size = array.length
  (0...size).each do |i|
    puts array[i]
  end
  puts "\n"
end

array = [64, 25, 12, 22, 11]
sorted_array = select_sort(array)
puts "sorted array: \n"
print_array(sorted_array)
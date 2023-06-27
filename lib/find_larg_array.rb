#Encontre os três maiores elementos distintos em uma matriz
#Entrada: arr[] = {10, 4, 3, 50, 23, 90}
#saída: 90, 50, 23

def find_larg_arr(array)
  array.sort! # ordena o array em ordem crescente
  array.reverse! # reverte a ordem para obter a ordem decrescente
  array = array[0..2] # seleciona os três primeiros elementos

  array
end

array = [10, 4, 3, 50, 23, 90]

puts "New array: #{find_larg_arr(array)}"


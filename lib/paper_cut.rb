# frozen_string_literal: true

# Paper Cut into Minimum Number of Squares - Papel cortado em um número mínimo de quadrados

# Encontre um numero mínimo de quadrados que podem ser cortados do papel

# Entrada: 13 x 29
# Saída: 9
# Explicação:
# 2 (quadrados de tamanho 13x13) +
# 4 (quadrados de tamanho 3x3) +
# 3 (quadrados de tamanho 1x1)=9

def cut(a, b)
  return 1 if a == b

  min_side = [a, b].min
  max_side = [a, b].max

  return max_side / min_side if (max_side % min_side).zero?

  remainder = max_side % min_side
  max_side / min_side + cut(min_side, remainder)
end

# Exemplo de uso
a = 13
b = 29
total_area = a * b
min_size = cut(a, b)
min_squares = total_area / (min_size**2)

puts min_squares

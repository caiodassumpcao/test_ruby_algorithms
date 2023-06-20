# frozen_string_literal: true

# Dado 3 inputs, encontre o intervalo dado e os números divisiveis.

# função de troca valor de A e B dentro do array

def array_intervalo(a, b)
  (a..b).to_a
end

def divisor_comum(x, y, w)
  num_div = []

  if x > y
    x, y = y, x
  elsif x == y
    return []
  end

  intervalo_2 = array_intervalo(x, y)

  intervalo_2.each do |num|
    num_div << num if num != x && num != y && (num % w).zero?
  end

  num_div
end

print 'Digite o primeiro número do intervalo: '
x = gets.chomp.to_i
print 'Digite o ultimo número do intervalo: '
y = gets.chomp.to_i
print 'Digite o divisor comum: '
w = gets.chomp.to_i

resultado = divisor_comum(x, y, w)
if resultado.empty?
  puts "Não existe nenhum números dentro do intervalo"
else
  puts "Números divisíveis por #{w} entre #{x} e #{y}: #{resultado.inspect}"
end

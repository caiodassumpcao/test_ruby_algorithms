# frozen_string_literal: true

# Dado 3 inputs, encontre o intervalo dado e os números divisiveis.
#
# função de troca valor de A e B dentro do array
def swap(a, b)
  s = a
  t = b
  a = t
  b = s
end

def array_intervalo(a, b)
  a += 1
  b -= 1
  (a..b).to_a
end

def divisor_comum(x, y, w)
  num_div = []

  if x < y
    swap(x, y)
    intervalo_2 = array_intervalo(x, y)
  elsif x == y
    intervalo_2 = nil
  else
    intervalo_2 = array_intervalo(x, y)
  end

  if intervalo_2 == nil
    return - 1
  else
  intervalo_2.each { |num| num_div << num if (num % w).zero? }
    return intervalo_2
  end
end

print 'Digite o primeiro número do intervalo: '
x = gets.chomp.to_i
print 'Digite o ultimo número do intervalo: '
y = gets.chomp.to_i
print 'Digite o divisor comum: '
w = gets.chomp.to_i

resultado = divisor_comum(x, y, w)
puts "Números divisíveis por #{w} entre #{x} e #{y}: #{intervalo_2}"


def calculadora(a, b)
  yield(a, b)
end

puts "Digite um numero"
num_1 = gets.chomp.to_f
puts "Digite um novo numero para somarmos ao primeiro"
num_2 = gets.chomp.to_f
soma = calculadora(num_1, num_2) { |a, b| a + b }
puts "Resultado da operaçao Soma: #{soma}"

def filtro_pares(array)
  pares = []
  array.each do |numero|
    pares << numero if yield(numero)
  end
  pares
end

numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
pares = filtro_pares(numeros) { |num| num.even? }
puts "Numeros pares: #{pares}"

def alterar_string(string)
  yield(string)
end

texto = "Texto de teste"
maiusculas = alterar_string(texto) { |str| str.upcase }
puts "Letras maiusculas: #{maiusculas}"
minusculas = alterar_string(texto) { |str| str.downcase }
puts "Letras minusculas: #{minusculas}"


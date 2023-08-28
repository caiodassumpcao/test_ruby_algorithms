def calculadora(operacoes)
  numero1 = operacoes[:numero1]
  numero2 = operacoes[:numero2]
  operacao = operacoes[:operacao]

  case operacao
  when "soma"
    resultado = numero1 + numero2
  when "subtracao"
    resultado = numero1 - numero2
  when "multiplicacao"
    resultado = numero1 * numero2
  when "divisao"
    resultado = numero1.to_f / numero2
  when 'exponenciacao'
    resultado = numero1 ** numero2
  else
    return "Operacao invalida"
  end

  resultado
end

puts "Digite um numero"
numero1 = gets.chomp.to_f
puts "Digite outro numero"
numero2 = gets.chomp.to_f
puts "Escolha a operaçao desejada [ soma - subtracao - multiplicacao - divisao - exponenciacao ]"
operacao = gets.chomp

opcoes = { numero1: numero1, numero2: numero2, operacao: operacao }
puts calculadora(opcoes)


def calculadora(operacoes)
  numero1 = operacoes[:operacoes]
  numero2 = operacoes[:operacoes]
  operacao = operacoes[:operacoes]

  case operacao
  when "soma"
    resultado = numero1 + numero2
  when "subtracao"
    resultado = numero1 - numero2
  when "multiplicacao"
    resultado = numero1 * numero2
  when "divisao"
    resultado = numero1.to_f / numero2
  else
    return "operacao invalida"
  end

  resultado
end

puts "Digite um numero"
numero1 = gets.chomp.to_f
puts "Digite outro numero"
numero2 = gets.chomp.to_f
puts "Escolha a operaçao desejada [ soma - subtracao - multiplicacao - divisao ]"
operacao = gets.chomp.to_s

opcoes = { numero1: , numero2:, operacao: }
puts calculadora(opcoes)

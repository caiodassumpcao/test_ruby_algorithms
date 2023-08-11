def somatorio_fatorial(n)
  if n <= 0
    puts "Numero invalido, digite um numero inteiro positivo"
    n = gets.chomp.to_i
  end

  if n > 0
    soma = soma + n
    n -= 1
    if n == 0
      puts "Somatorio fatorial de #{n}: #{soma}"
    end
  end

end

puts "Digite um n°: "
n = gets.chomp.to_i
somatorio_fatorial(n)
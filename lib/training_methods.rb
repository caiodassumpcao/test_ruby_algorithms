# SOMA FATORIAL
puts "Exercicio 1: SOMA FATORIAL"
def somatorio_fatorial(n)
  if n <= 0
    puts "Numero invalido, digite um numero inteiro positivo"
    n = gets.chomp.to_i
  end

  if n > 0
    soma = 0
    while n > 0
      soma += n
      n -= 1
    end
      puts "Somatorio fatorial de #{n}: #{soma}"
  end
end

puts "Digite um n°: "
n = gets.chomp.to_i
somatorio_fatorial(n)

# VERIFICAÇAO DE PALINDROMO
puts "Exercicio 2: VERIFICAÇAO DE PALINDROMO"

def veri_palindr(word)
  word = word.downcase
  reverse = word.reverse
  if reverse == word
    puts "A palavra #{word} e Palindromo"
  else
    puts "A palavra #{word} nao e Palindromo"
  end

end
puts "Digite uma palavra:"
word = gets.chomp.to_s
veri_palindr(word)



# ARRAY ALEATORIO
puts "Exercicio 3: ARRAY ALEATORIO"
def array_sort(n)
  array = []
  while n >= 0
    numero_rand = rand(1..999)
    array += numero_rand
  end
  puts array
end

puts "Digite o tamanho do array: "
n = gets.chomp.to_i
array_sort(n)

# MAIOR ELEMENTO
puts "Exercicio 4:MAIOR ELEMENTO"

def maior_elemento(array)
  tamanho = array.length
  maior_num = 0
  while tamanho >= 0
    if array(t - 1) > maior_num
      maior_num = array(t - 1)
    end
    puts "Maior numero e: #{maior_num}"
  end
end
array = []

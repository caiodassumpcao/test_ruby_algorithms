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
  while n > 0
    numero_rand = rand(1..999)
    array.push(numero_rand)
    n -= 1
  end
  array
end


# MAIOR ELEMENTO

def maior_elemento(array)
  tamanho = array.length
  maior_num = array[0]
  for i in 1..(tamanho - 1)
    if array[i] > maior_num
      maior_num = array[i]
    end
  end
  maior_num
  puts "Maior numero e: #{maior_num}"
end

puts "Digite o tamanho do array: "
n = gets.chomp.to_i
random_array = array_sort(n)
print random_array
puts " "

puts "Exercicio 4:MAIOR ELEMENTO"
maior = maior_elemento(random_array)
puts "Maior elemento do array de #{n} elementos e: #{maior}"


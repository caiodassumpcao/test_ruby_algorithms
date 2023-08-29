def safe_division()
  begin
    puts "Digite o primeiro numero:"
    num_1 = gets.chomp.to_i

    puts "Digite o segundo numero:"
    num_2 = gets.chomp.to_i

    result = num_1 / num_2
    puts "Resultado: #{result}"

  rescue ZeroDivisionError
    puts "Erro: Divisao por zero nao e permitida"
  rescue => e
    puts "Erro: #{e.message}"
  end
end

puts "Funçao: Safe Division"
safe_division()

def file_reading()
  begin
    puts "Digite o nome do arquivo:"
    file_name= gets.chomp

    file = File.open(file_name, "r")
    contests = file.read
    puts "Conteudo do arquivo:\n#{contests}"

  rescue Errno:ENOENT
  puts "Erro: O arquivo '#{file_name}' nao foi encontrado"
  rescue => e
    puts "Erro: #{e.message}"
  ensure
    file.close if file
  end
end

puts "Funçao: File Reading"
file_reading()

def guess_number(target)
  puts "Tente adivinhar o numero entre 1 e 100:"
  guess = gets.chomp.to_i

  if guess == target
    puts "Parabens voce acertou o numero!"
  elsif guess > target
    puts "Dica: O numero e menor que #{guess}"
    guess_number(target)
  else guess < target
    puts "Dica: O numero e maior que #{guess}"
    guess_number(target)
  end
end
begin
  target_number = rand(1..100)
  guess_number(target_number)

rescue ArgumentError
  puts "Erro: Palpite invalido. Digite um numero."
rescue => e
  puts "Erro: #{e.message}"
end

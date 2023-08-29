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
  end
end

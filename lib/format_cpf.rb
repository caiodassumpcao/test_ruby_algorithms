def formate_cpf(cpf)
  tamanho_cpf = cpf.length
  if tamanho_cpf == 11
    cpf = cpf.gsub(/(\d{3})(\d{3})(\d{3})(\d{2})/, '\1.\2.\3-\4')
  else
    puts "CPF invalido, digite o cpf novamente!"
  end
end

def contagem_charac(cpf)

  #Aqui verificamos se o caractere e um digito ou espaco em branco
  char =~ /[0-9]\s]/
end

def remove_special_charac(cpf)
  new_cpf = []
  cpf.each_char do |char|
    if contagem_charac(char)
      puts "Special character #{char} removed"
    else
      new_cpf.push(char)
    end
  end
  formate_cpf(new_cpf.join)
end

puts "Digite seu cpf:"
cpf_1 = gets.chomp
puts "CPF formatado: #{remove_special_charac(cpf_1)}"















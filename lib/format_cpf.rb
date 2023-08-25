def formate_cpf(cpf)
  cpf = cpf.gsub(/(\d{3})(\d{3})(\d{3})(\d{2})/, '\1.\2.\3-\4')
end

def contagem_charac(cpf)
  #O * após o conjunto de caracteres permite que ele se repita zero ou mais vezes.
  !(cpf =~ /^[0-9\s]*$/)
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















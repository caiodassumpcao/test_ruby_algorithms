# CPF


def valida_cpf_formatado(cpf)
  return /^\d{3}\.\d{3}\.\d{3}-\d{2}$/.match?(cpf)
end
print 'Digite seu CPF'

cpf = gets.chomp


if valida_cpf_formatado(cpf)
  puts 'CPF no formato correto!'
else
  puts 'CPF no formato incorreto'
end

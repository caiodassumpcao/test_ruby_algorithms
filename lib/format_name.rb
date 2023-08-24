def formate_name(opcoes)
  primeiro_nome = opcoes[:primeiro_nome]
  ultimo_nome = opcoes[:ultimo_nome]

  "#{ultimo_nome}, #{primeiro_nome}"
end

puts "Qual seu primeiro nome?"
primeiro_nome = gets.chomp
puts "Qual seu ultimo nome?"
ultimo_nome = gets.chomp

nome = { primeiro_nome: primeiro_nome, ultimo_nome: ultimo_nome }
puts formate_name(nome)
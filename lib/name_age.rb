def cadastro()
  puts "Digite seu nome:"
  name_user = gets.chomp

  puts "Digite seu sobrenome:"
  last_name_user = gets.chomp

  puts "Digite sua idade:"
  age_user = gets.chomp.to_i

  puts "Cadastro realizado: #{name_user} #{last_name_user}, #{age_user} years"
end
cadastro()

def teste ()
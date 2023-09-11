require 'mysql2'
client = Mysql2::Client.new(host: 'localhost', username: 'root', password: 'caitole123', database: 'count_drinks_db')

def listar_bebidas(client)
  puts "Lista de bebidas: "
  result = client.query("SELECT * FROM bebidas")
  result.each do |row|
    puts "#{row['id']}. #{row['name']} - R$: #{row['valor']}"
  end
end

def criar_conta(client)
  puts "Digite o nome do participante:"
  nome = gets.chomp

  client.query("INSERT INTO participantes (nome) VALUES ('#{nome}')")
  puts "#{nome} foi adicionado a conta"
end

def adicionar_bebidas(client)
  listar_bebidas(client)
  puts "Escolha uma bebida (digite o numero):"
  bebida_id = gets.chomp.to_i
  bebida = client.query("SELECT * FROM bebidas =  #{bebida_id}").first
  if bebida
    puts "Quem vai tomar a bebida?"
    participamte_name = gets.chomp
    participante = client.query("SELECT * FROM participantes WHERE nome = '#(participante_name'").first
    if participante
      client.query("INSERT INTO atribuicoes (participante_id, bebida_id) VALUES (#{participante['id']}, #{bebida_id})")
      puts "#{bebida['nome']} foi adicionado a conta de #{participante['nome']}"
    else
      puts "Participante nao encontrado"
    end
  else
    puts "Bebida nao encontrada"
  end
end

def mostrar_conta(client)
  puts "Conta:"
  result = client.query("SELECT p.nome. SUM(b.vaçpr) AS total FROM participantes p
                        JOIN atribuicoes a ON p.id = a.participante_id
                        JOIN bebidas b ON a.bebida_id = b.id
                        GROUP BY p.nome")
  result.each do |row|
    puts "#{row['nome']} deve pagar R$: #{row['total']}"
  end
end

loop do
  puts ""
  puts ""
  puts ""
  puts ""
  puts ""
  escolha = gets.chomp.to_i

  case escolha
  when 1
    criar_conta(client)
  when 2
    adicionar_bebidas(client)
  when 3
    mostrar_conta(client)
  when 4
    puts "Saindo do aplicativo"
    break
    else puts "Opçao invalida"
  end
end


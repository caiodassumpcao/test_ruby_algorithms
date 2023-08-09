
class Personagem
  def custo_5
    puts "Criado personagem custo 5"
  end
end

heimer = Personagem.new
heimer.custo_5
sion = Personagem.new
"Sion".send(:length)
sion.send(:custo_5)

class Teste
  self.class_eval {
    define_method(:'hey there') { puts 'Hey there!'}
  }
end
foo = Teste.new
foo.send :'hey there'

class Integer
  def more
    return self + 1
  end
end
puts 3.more
puts 7.more
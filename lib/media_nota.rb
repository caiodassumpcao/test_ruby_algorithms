def calcular_media(notas)
  soma_total = notas.values.reduce(0, :+)
  media = soma_total.to_f / notas.size
  todas_notas = notas.values
  puts todas_notas
end

notas = { calculo_1: 8, calculo_2: 1, calculo_4: 10, calculo_3: 5, fisica_1: 9 }
media = calcular_media(notas)
puts "A media das notas e: #{media}"

def maior_valor(lista)
  prod_maior_valor = lista.max_by { |produto, preço| preço }
  prod_maior_valor.first
  produtos = lista.keys
  puts produtos
end


def total_vendido(lista_vendas)
  total = lista_vendas.values.reduce(0, :+)

end

lista_vendas = { "fone" => 36, "mouse" => 15, "teclado" => 7, "monitor" => 8, "mouse_pad" => 46 }
total = total_vendido(lista_vendas)
puts "Total de itens vendidos: #{total}"


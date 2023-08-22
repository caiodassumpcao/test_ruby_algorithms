def calcular_media(notas)
  soma_total = notas.values.reduce(0, :+)
  media = soma_total.to_f / notas.size
end

notas = { calculo_1: 8, calculo_2: 1, calculo_4: 10, calculo_3: 5, fisica_1: 9 }
media = calcular_media(notas)
puts "A media das notas e: #{media}"

def maior_valor(lista)
  prod_maior_valor = lista.max_by { |produto, preço| preço }
  prod_maior_valor.first
end
def menor_valor(lista)
  prod_menor_valor = lista.min_by { |produto, preco| preco }
  prod_menor_valor.first
end
lista = { banana: 2.0, laranja: 1.9, morango: 3.2, uva: 2.5 }
produto_maior_valor = maior_valor(lista)
produto_menor_valor = menor_valor(lista)

puts "O maior e menor valor da lista de produtos e respectivamente: #{produto_maior_valor}, #{produto_menor_valor}"


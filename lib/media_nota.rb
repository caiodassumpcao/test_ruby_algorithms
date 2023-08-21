def calcular_media(notas)
  soma_total = notas.values.reduce(0, :+)
  media = soma_total.to_f / notas.size
end

notas = { calculo_1: 8, calculo_2: 1, calculo_4: 10, calculo_3: 5, fisica_1: 9 }
media = calcular_media(notas)
puts "A media das notas e: #{media}"

def maior_e_menor_valor(lista)
  prod_maior_valor = lista.max_by { |produto, preço| preço }
  prod_maior_valor.first

end

lista = { banana: 2.0, laranja: 1.9, morango: 3.2, uva: 2.5 }

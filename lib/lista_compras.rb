def menor_valor(lista)
  lista.min_by { |produto, custo| custo }.first
end

def maior_valor(lista)
  lista.max_by { |produto, custo| custo }.first
end

def filtro_custo(lista, custo_limite)
  lista.select { |produto, custo| custo <= custo_limite }.keys
end


def return_custo_item(lista, item)
  lista[item]
end

def verificar_item_presente(lista, item)
  if lista.has_key?(item)
    puts "Item ja presente na lista"
  else
    lista[novo_item] = custo_novo_item
    puts "Item #{novo_item} de custo #{custo_novo_item} adicionado a lista de compras"
  end
end

def remover_item(lista, item)
  if lista.has_key?(item)
    valor_removido = lista.delete(item)
    puts "Item #{item} de valor #{valor_removido} foi removido da lista"
  else
    puts "Item #{item} nao existe na lista"
  end
end

def add_item(lista, novos_itens)
  lista.merge!(novos_itens)
  puts "Lista de compras atualizadas com os novos itens:"
  lista.each { |item, custo| puts "#{item.capitalize}: R$ #{custo}" }
end

def inflacao(lista)
  att_inflacao = lista.transform_values { |custo| custo * 1.093 }
  puts "Lista de preços após a inflação:"
  att_inflacao.each { | item, custo | puts "#{item.capitalize}: R$ #{custo}" }
end

lista = { banana: 2, laranja: 1.9, morango: 3.2, uva: 2.5, cafe: 3.3, pizza: 18.9, guarana: 10.5 }
custo_limite = 5
item = :banana
novo_item = :vinagre
custo_novo_item = 0.43

puts "O produto de menor valor é #{menor_valor(lista_de_compras)} que custa #{lista_de_compras[menor_valor(lista_de_compras)]}"
puts "O produto de maior valor é #{maior_valor(lista_de_compras)} que custa #{lista_de_compras[maior_valor(lista_de_compras)]}"

resultado_filtro = filtro_custo(lista_de_compras, custo_limite)
puts "Itens dentro do limite de custo: #{resultado_filtro}"

custo_item = return_custo_item(lista_de_compras, item)
puts "O custo do item selecionado é: #{custo_item}"

verificar_item_presente(lista_de_compras, novo_item, custo_novo_item)


produto_menor_valor = maior_valor(lista)
produto_maior_valor = menor_valor(lista)
menor_valor = lista[produto_menor_valor]
maior_custo = lista[produto_maior_valor]

puts " O produto de menor valor e #{produto_menor_valor} que custa #{menor_valor}"
puts " O produto de maior valor e #{produto_maior_valor} que custa #{maior_custo}"

novos_itens = { vinagre: 6.43, agua: 1.88, ameixa: 4.56, graviola: 100 }
add_item(lista, novos_itens)

custo_item = return_custo_item(lista)
puts "O custo do item selecionado e: #{custo_item}"
resultado_filtro = filtro_custo(lista)
puts "Itens dentro do limite de custo: #{resultado_filtro}"
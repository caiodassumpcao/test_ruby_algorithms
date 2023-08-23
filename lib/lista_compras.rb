def menor_valor(lista)
  prod_menor_valor = lista.min_by { |produto, custo| custo }
  prod_menor_valor.first
end

def maior_valor(lista)
  prod_maior_valor = lista.max_by { |produto, custo| custo }
  prod_maior_valor.first
end

lista = { banana: 2, laranja: 1.9, morango: 3.2, uva: 2.5, cafe: 3.3, pizza: 18.9, guarana: 10.5 }

produto_menor_valor = maior_valor(lista)
produto_maior_valor = menor_valor(lista)
menor_valor = lista[produto_menor_valor]
maior_custo = lista[produto_maior_valor]

puts " O produto de menor valor e #{produto_menor_valor} que custa #{menor_valor}"
puts " O produto de maior valor e #{produto_maior_valor} que custa #{maior_custo}"

def filtro_custo(lista)
  puts " Qual o limite de custo por item?"
  custo_limite = gets.chomp.to_i
  valores = lista.values
  lista_filtrada = []

  n = valores.length
  while n > 0
    if valores[n - 1] <= custo_limite
      lista_filtrada <<  valores[n - 1]
    end
    n -= 1

  end
  return lista_filtrada
end

resultado_filtro = filtro_custo(lista)
puts "Itens dentro do limite de custo: #{resultado_filtro}"

def return_custo_item(lista)
  puts "Qual item deseja saber o preço?"
  item = gets.chomp.to_sym
  custo_item = lista[item]
end

custo_item = return_custo_item(lista)
puts "O custo do item selecionado e: #{custo_item}"

def verificar_item_presente(lista)
  puts "Qual item deseja adicionar a lista?"
  novo_item = gets.chomp.to_sym
  existe_novo_item = lista.has_key?(novo_item)
  if existe_novo_item
    puts "Item ja presente na lista"
  else
    puts "Qual valor do item?"
    custo_novo_item = gets.chomp.to_f
    lista[novo_item] = custo_novo_item
    puts "Item #{novo_item} de custo #{custo_novo_item} adicionado a lista de compras"
  end

end

verificar_item_presente(lista)
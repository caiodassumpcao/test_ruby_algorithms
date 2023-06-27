# frozen_string_literal: true

# Palindromo

print 'Digite uma palavra para verificarmos se a mesma é um palíndromo'
palavra = gets.chomp.downcase
palavra_reversa = palavra.reverse

if palavra == palavra_reversa
  puts "#{palavra} é um palíndromo"
else
  puts "#{palavra} não é um palíndromo"
end

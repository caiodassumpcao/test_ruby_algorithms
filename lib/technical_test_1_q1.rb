# frozen_string_literal: true

# Palindromo


def verify_palindr(palavra)
  palavra_reversa = palavra.reverse
  if palavra == palavra_reversa
    puts "#{palavra} é um palíndromo"
  else
    puts "#{palavra} não é um palíndromo"
  end
end


print 'Digite uma palavra para verificarmos se a mesma é um palíndromo'
palavra = gets.chomp.downcase
verify_palindr(palavra)
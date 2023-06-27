# frozen_string_literal: true

# Fatorial
print 'Digite um número'

def fatorial(x)
  if x.to_i.negative?
    puts 'Número inválido, digite um numero positivo maior que zero'
  else
    result = 1
    (1..x.to_i).each { |num| result *= num}
    puts = puts "#{x}! = #{result}"
  end
end

x = gets.chomp
fatorial(x)



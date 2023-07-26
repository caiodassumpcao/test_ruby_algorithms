# frozen_string_literal: true

puts "Qual a carga horaria da cadeira em horas?"
carga_horaria = gets.chomp.to_i * 60

puts "Quantos minutos duram um dia de aula?"
hora_aula = gets.chomp.to_i

total_aulas = carga_horaria / hora_aula

total_faltas = (total_aulas * 0.25).floor

puts "Voce pode ter um total de #{total_faltas} faltas."


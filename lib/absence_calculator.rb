# frozen_string_literal: true
require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'mysql2',
  host: 'localhost',
  username: 'root',
  password: 'caitole123',
  database: 'ruby_absence_calculator_8_db'
)

class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :carga_horaria
      t.integer :hora_aula

      t.timestamps
    end
  end
end

CreateUsers.new.change

class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end

class User < ApplicationRecord
  scope :materia, -> {
    where("carga_horaria >= 20 AND hora_aula >= 140")
  }
end

User.create(name: "Maquinas Primarias", carga_horaria: 60, hora_aula: 280)

materias = User.materia

materias.each do |cadeira|
  print "Cadeira:"
  print cadeira.name
  print " "
  print "/ Carga horaria:"
  print cadeira.carga_horaria
  print " "
  print "/ Hora aula:"
  print cadeira.hora_aula
end

#puts "Qual a carga horaria da cadeira em horas?"
#carga_horaria = gets.chomp.to_i * 60

#puts "Quantos minutos duram um dia de aula?"
#hora_aula = gets.chomp.to_i

#total_aulas = carga_horaria / hora_aula

#total_faltas = (total_aulas * 0.25).floor

#puts "Voce pode ter um total de #{total_faltas} faltas."


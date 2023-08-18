#3) Considere um sistema onde cada Usuário possui os atributos nome (String), idade
# (Inteiro) e profissão (String). Faça uma query que retorne o nome de todos os usuários com
# idade maior ou igual à 18 anos e cuja profissão seja programador ou desenvolvedor

require 'active_record'

# Estabelece conexão com o banco de dados.
ActiveRecord::Base.establish_connection(
  adapter: 'mysql2',
  host: 'localhost',
  username: 'root',
  password: 'caitole123',
  database: 'ruby_teste_2_q35_db'
)

# Definição das classes e migrações de banco de dados (Migrações)
class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :job
      t.timestamps
    end
  end
end

# Executa as migrações
CreateUsers.new.change

class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end

# Definindo classes de modelo
class User < ApplicationRecord
  scope :programadores_desenvolvedores_maior_de_18, -> {
    where("age >= 18 AND job IN ('programador', 'desenvolvedor')")
  }
end

# Criação de registros no banco de dados
User.create(name: "João", age: 20, job: "programador")
User.create(name: "Maria", age: 30, job: "analista")
User.create(name: "Caio", age: 24, job: "desenvolvedor")
User.create(name: "Malu", age: 16, job: "programador")

# Consulta dos usuários que atendem aos critérios (Programador ou desenvolvedor maior de 18 anos)
usuarios = User.programadores_desenvolvedores_maior_de_18

# Imprimir os nomes dos usuários que atendem aos requisitos especificados
usuarios.each do |usuario|
  puts usuario.name
end
# 2) Em um sistema web, cada usuário pode se inscrever em diversos eventos, cada evento possui até 3 prêmios que são distribuídos entre os usuários presentes. O sistema precisa
# guardar a informação sobre quem participou de cada evento e quem ganhou os prêmios. Modele um banco de dados capaz de suportar essas regras.
require 'active_record'

# Estabelece conexão com o banco de dados.
ActiveRecord::Base.establish_connection(
  adapter: 'mysql2',
  host: 'localhost',
  username: 'root',
  password: 'caitole123',
  database: 'ruby_teste_2_q21_db'
)

# Definindo a estrutura da tabela Users
class User < ActiveRecord::Base
  has_many :event_users   # Um usuário pode ter vários registros na tabela event_users
  has_many :events, through: :event_users   # Um usuário pode estar associado a vários eventos através da tabela event_users
end

# Definindo a estrutura da tabela Events
class Event < ActiveRecord::Base
  has_many :event_users   # Um evento pode ter vários registros na tabela event_users
  has_many :users, through: :event_users   # Um evento pode estar associado a vários usuários através da tabela event_users
  has_many :awards   # Um evento pode ter vários prêmios
end

# Definindo a estrutura da tabela EventUsers
class EventUser < ActiveRecord::Base
  belongs_to :user   # Um registro na tabela event_users pertence a um usuário
  belongs_to :event   # Um registro na tabela event_users pertence a um evento
end

# Definindo a estrutura da tabela Awards
class Award < ActiveRecord::Base
  belongs_to :event   # Um prêmio pertence a um evento
end

# Criação das tabelas no banco de dados
ActiveRecord::Schema.define do
  create_table :users do |t|
    t.string :name   # Coluna para armazenar o nome do usuário
    t.timestamps   # Colunas para armazenar a data de criação e atualização do registro
  end

  create_table :events do |t|
    t.string :name   # Coluna para armazenar o nome do evento
    t.timestamps   # Colunas para armazenar a data de criação e atualização do registro
  end

  create_table :event_users do |t|
    t.references :user   # Chave estrangeira que referencia a tabela users
    t.references :event   # Chave estrangeira que referencia a tabela events
    t.timestamps   # Colunas para armazenar a data de criação e atualização do registro
  end

  create_table :awards do |t|
    t.references :event   # Chave estrangeira que referencia a tabela events
    t.string :name   # Coluna para armazenar o nome do prêmio
    t.timestamps   # Colunas para armazenar a data de criação e atualização do registro
  end
end

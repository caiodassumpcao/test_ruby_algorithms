# Essa linha carrega a biblioteca ActiveRecord, que é a principal biblioteca de mapeamento objeto-relacional (ORM) do Rails. Ela fornece uma interface para interagir com o banco de dados usando objetos Ruby.
require 'active_record'

# Estabelece conexão com o banco de dados.
ActiveRecord::Base.establish_connection(
  adapter: 'mysql2',
  host: 'localhost',
  username: 'root',
  password: 'caitole123',
  database: 'ruby_teste_1_q412_db'
)

# Definindo uma classe Employee que herda da classe ActiveRecord::Base.
# Essa é uma convenção do ActiveRecord para criar um modelo de banco de dados associados a uma tabela chamada 'employees'
# Classe terá acesso as operações de CRUD e os relacionamentos definidos posteriormente.
class Employee < ActiveRecord::Base
  belongs_to :team # Definindo relacionamentos para a classe "team"
  belongs_to :job_title # Definindo relacionamentos para a classe "job_title"

  # Método para retornar o nome completo do funcionário
  def full_name
    "#{first_name} #{last_name}"
  end
end

# Classe Team herda da classe ActiveRecord::Base
class Team < ActiveRecord::Base
  has_many :employees
end

# Classe JobTitle herda da classe ActiveRecord::Base
class JobTitle < ActiveRecord::Base
  has_many :employees
end

# Criação das tabelas usando migrações (Definindo o esquema do banco de dados usando ActiveRecord)
ActiveRecord::Schema.define do
  create_table :teams, unless_exists: true do |t|
    t.string :name
  end unless table_exists?(:teams)

  create_table :job_titles, unless_exists: true do |t|
    t.string :name
  end unless table_exists?(:job_titles)

  create_table :employees, unless_exists: true do |t|
    t.string :first_name
    t.string :last_name
    t.string :cpf
    t.integer :team_id
    t.integer :job_title_id
  end unless table_exists?(:employees)
end

# Inserção dos dados nas tabelas
Team.create(name: 'TI') unless Team.exists?(name: 'TI') # Verifica se a equipe já existe antes de criar
Team.create(name: 'Suporte') unless Team.exists?(name: 'Suporte') # Verifica se a equipe já existe antes de criar

JobTitle.create(name: 'Desenvolvedor back-end') unless JobTitle.exists?(name: 'Desenvolvedor back-end') # Verifica se o cargo já existe antes de criar
JobTitle.create(name: 'Suporte') unless JobTitle.exists?(name: 'Suporte') # Verifica se o cargo já existe antes de criar
JobTitle.create(name: 'Desenvolvedor front-end') unless JobTitle.exists?(name: 'Desenvolvedor front-end') # Verifica se o cargo já existe antes de criar
JobTitle.create(name: 'Encantador de clientes') unless JobTitle.exists?(name: 'Encantador de clientes') # Verifica se o cargo já existe antes de criar

# Cria novo registro na tabela 'team_id' e 'job_title_id' se o colaborador ainda não existe
Employee.create_with(team_id: Team.find_by(name: 'TI').id, job_title_id: JobTitle.find_by(name: 'Desenvolvedor back-end').id)
        .find_or_create_by(first_name: 'Tiago', last_name: 'Nogueira', cpf: '032.336.130-75')

Employee.create_with(team_id: Team.find_by(name: 'TI').id, job_title_id: JobTitle.find_by(name: 'Desenvolvedor front-end').id)
        .find_or_create_by(first_name: 'João', last_name: 'Neves', cpf: '461.636.517-23')

Employee.create_with(team_id: Team.find_by(name: 'Suporte').id, job_title_id: JobTitle.find_by(name: 'Encantador de clientes').id)
        .find_or_create_by(first_name: 'Pedro', last_name: 'Alves', cpf: '665.415.876-80')

# Recupera todos os colaboradores e exibe suas informações
employees = Employee.all

employees.each do |employee|
  puts '------------------------'
  puts "Nome: #{employee.full_name}"
  puts "CPF: #{employee.cpf}"
  puts "Equipe: #{employee.team.name}"
  puts "Cargo: #{employee.job_title.name}"
end

puts '------------------------'
puts "Os dados estão corretos. Total de colaboradores: #{employees.count}"

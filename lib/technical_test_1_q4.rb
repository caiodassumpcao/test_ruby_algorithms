# Essa linha carrega a biblioteca ActiveRecord, que é a principal biblioteca de mapeamento objeto-relacional (ORM) do Rails. Ela fornece uma interface para interagir com o banco de dados usando objetos Ruby.
require 'active_record'

# Estabelece conexão com o banco de dados.
ActiveRecord::Base.establish_connection(
  adapter: 'mysql2',
  host: 'localhost',
  username: 'root',
  password: 'caitole123',
  database: 'ruby_teste_1_q5_db'
)

# Definindo uma classe Employee que herda da classe ActiveRecord::Base.
# Essa é uma convenção do ActiveRecord para criar um modelo de banco de dados associados a uma tabela chamada 'employees'
# Classe terá acesso as operações de CRUD e os relacionamentos definidos posteriormente.
class Employee < ActiveRecord::Base
  belongs_to :team # Definindo relacionamentos para a classe "team"
  # 'belongs_to': Método para estabelecer associação onde um objeto pertence a outro.
  # Ele é usado no modelo que possui a chave estrangeira para referenciar o modelo pai
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
  create_table :employees unless table_exists?(:employees) do |t|
    t.string :first_name
    t.string :last_name
    t.string :cpf
    t.integer :team_id
    t.integer :job_title_id
  end

  create_table :teams unless table_exists?(:teams) do |t|
    t.string :name
  end

  create_table :job_titles unless table_exists?(:job_titles) do |t|
    t.string :name
  end
end

# Inserção dos dados nas tabelas (Cria um novo registro na tabela "teams" com nome "TI", utilizando o método 'create' fornecido pelo ActiveRecord)
Team.create(name: 'TI')

# Cria novo registro na tabela 'Job_titles'
JobTitle.create(name: 'Desenvolvedor back-end')
JobTitle.create(name: 'Suporte')
JobTitle.create(name: 'Desenvolvedor front-end')
JobTitle.create(name: 'Encantador de clientes')

# Cria novo registro na tabela 'team_id e 'job_title_id'
Employee.create(first_name: 'Pedro', last_name: 'Alves', cpf: '665.415.876-80', team_id: 2, job_title_id: 3)
Employee.create(first_name: 'Tiago', last_name: 'Nogueira', cpf: '032.336.130-75', team_id: 1, job_title_id: 1)
Employee.create(first_name: 'João', last_name: 'Neves', cpf: '461.636.517-23', team_id: 1, job_title_id: 2)


# Impressão das informações dos funcionários
# Consulta o banco de dados buscando registros da tabela "employees", buscando "teams" e "job_title" ordenados por CPF
employees = Employee.joins(:team, :job_title).order(:cpf)

# Print da busca feita anteriormente
employees.each do |employee|
  puts "Nome: #{employee.full_name}"
  puts "CPF: #{employee.cpf}"
  puts "Equipe: #{employee.team.name}"
  puts "Cargo: #{employee.job_title.name}"
  puts "------------------------"
end

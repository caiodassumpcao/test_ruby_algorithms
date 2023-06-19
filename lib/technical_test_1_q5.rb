require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'mysql2',
  host: 'localhost',
  username: 'root',
  password: 'caitole123',
  database: 'ruby_teste_1_q51_db'
)

class Employee < ActiveRecord::Base
  belongs_to :team
  belongs_to :job_title

  def full_name
    "#{first_name} #{last_name}"
  end
end

class Team < ActiveRecord::Base
  has_many :employees
end

class JobTitle < ActiveRecord::Base
  has_many :employees
end

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

Team.create(name: 'TI') unless Team.exists?(name: 'TI')
Team.create(name: 'Suporte') unless Team.exists?(name: 'Suporte')

JobTitle.create(name: 'Desenvolvedor back-end') unless JobTitle.exists?(name: 'Desenvolvedor back-end')
JobTitle.create(name: 'Suporte') unless JobTitle.exists?(name: 'Suporte')
JobTitle.create(name: 'Desenvolvedor front-end') unless JobTitle.exists?(name: 'Desenvolvedor front-end')
JobTitle.create(name: 'Encantador de clientes') unless JobTitle.exists?(name: 'Encantador de clientes')

Employee.create_with(team_id: Team.find_by(name: 'TI').id, job_title_id: JobTitle.find_by(name: 'Desenvolvedor back-end').id)
        .find_or_create_by(first_name: 'Tiago', last_name: 'Nogueira', cpf: '032.336.130-75')

Employee.create_with(team_id: Team.find_by(name: 'TI').id, job_title_id: JobTitle.find_by(name: 'Desenvolvedor front-end').id)
        .find_or_create_by(first_name: 'João', last_name: 'Neves', cpf: '461.636.517-23')

Employee.create_with(team_id: Team.find_by(name: 'Suporte').id, job_title_id: JobTitle.find_by(name: 'Encantador de clientes').id)
        .find_or_create_by(first_name: 'Pedro', last_name: 'Alves', cpf: '665.415.876-80')

employees = Employee.all

employees.each do |employee|
  puts '------------------------'
  puts "Nome: #{employee.full_name}"
  puts "CPF: #{employee.cpf}"
  puts "Equipe: #{employee.team.name}"
  puts "Cargo: #{employee.job_title.name}"
end

ti_employees = Employee.joins(:team).where(teams: { name: 'TI' })

puts '------------------------'
puts "Colaboradores da equipe 'TI':"
ti_employees.each do |employee|
  puts "Nome: #{employee.full_name}"
  puts "CPF: #{employee.cpf}"
  puts "Equipe: #{employee.team.name}"
  puts "Cargo: #{employee.job_title.name}"
end

puts '------------------------'
puts "Os dados estão corretos. Total de colaboradores: #{employees.count}"

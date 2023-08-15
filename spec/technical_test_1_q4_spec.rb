require 'technical_test_1_q4'

RSpec.describe 'Biblioteca'
describe 'Funcionarios ' do
  before(:all) do
    ActiveRecord::Base.establish_connection(
      adapter: 'sqlite3',
      database: ':memory'
    )

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
    Team.create(name: 'TI') unless Team.exists?(name: 'TI') # Verifica se a equipe já existe antes de criar
    Team.create(name: 'Suporte') unless Team.exists?(name: 'Suporte') # Verifica se a equipe já existe antes de criar

    JobTitle.create(name: 'Desenvolvedor back-end') unless JobTitle.exists?(name: 'Desenvolvedor back-end') # Verifica se o cargo já existe antes de criar
    JobTitle.create(name: 'Suporte') unless JobTitle.exists?(name: 'Suporte') # Verifica se o cargo já existe antes de criar
    JobTitle.create(name: 'Desenvolvedor front-end') unless JobTitle.exists?(name: 'Desenvolvedor front-end') # Verifica se o cargo já existe antes de criar
    JobTitle.create(name: 'Encantador de clientes') unless JobTitle.exists?(name: 'Encantador de clientes') # Verifica se o cargo já existe antes de criar
  end

  after(:all) do
    Employee.delete_all
    Team.delete_all
    JobTitle.delete_all
  end
  context 'Operaçao basica' do
    it 'Criar, ler, atualizar e deletar funcionarios' do
      employee = Employee.create(first_name: 'Caio', last_name: 'Rodrigues', cpf: '123.456.789-00')
      read_employee = Employee.find(employee.id)
      expect(read_employee.first_name).to eq('Caio')

      employee.destroy
      expect(Employee.exists?(employee.id)).to be_falsey
    end

  end

end
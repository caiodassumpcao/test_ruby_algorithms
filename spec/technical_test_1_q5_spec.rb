require 'rspec-rails'
require 'technical_test_1_q5'
require 'active_record'

RSpec.describe 'Biblioteca' do
  before(:all) do
    ActiveRecord::Base.establish_connection(
      adapter: 'sqlite3',
      database: ':memory'
    )
    ActiveRecord::Schema.define do
      create_table :teams, unless_exists: true do |t|
        t.string :name
      end unless  table_exists?(:teams)

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
  end

  after(:all) do
    Employee.delete_all
    Team.delete_all
    JobTitle.delete_all
  end

  describe 'Funcionarios' do
    context 'Operaçao basica' do
      it 'Criar, ler, atualizar e deletar funcionarios' do
        employee = Employee.create(first_name: 'Caio', last_name: 'Rodrigues', cpf: '123.456.789-00')
        read_employee = Employee.find(employee.id)
        expect(read_employee.first_name).to eq('Caio')

        employee.destroy
        expect(Employee.exists?(employee.id)).to be_falsey
      end
    end

    context 'Relacionamento com equipe e cargo' do
      it 'return a complet name' do
        team = Team.find_by(name: 'TI')
        job_title = JobTitle.find_by(name: 'Desenvolvedor back-end')
        employee = Employee.create(first_name: 'Jack', last_name: 'Dassumpcao', cpf: '123.456.789-00', team: team, job_title: job_title)
        expect(employee.team).to eq(team)
        expect(employee.job_title).to eq(job_title)
      end
    end

    context 'Metodo full_name' do
      it 'retorna o nome completo do funcionario' do
        employee = Employee.create(:first_name: 'Malu', last_name: 'Rodrigues', cpf: '987.654.321-00')
        expect(employee.full_name).to eq('Malu Rodrigues')
      end
    end
  end
end
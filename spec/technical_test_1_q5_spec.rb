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

    JobTitle.create(name: 'Desenvolvedor back-end') unless JobTitle.exists?(method_name)
  end
end
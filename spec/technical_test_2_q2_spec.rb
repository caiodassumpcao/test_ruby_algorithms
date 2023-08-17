require 'rspec-rails'
require 'technical_test_2_q2'

RSpec.describe 'Funcionarios' do

  describe 'Funcionarios' do
    before(:all) do
      ActiveRecord::Base.establish_connection(
        adapter: 'mysql2',
        database: ':ruby_teste_2_q21_db'
      )

      ActiveRecord::Schema.define do
        create_table :
      end
    end

  end

end

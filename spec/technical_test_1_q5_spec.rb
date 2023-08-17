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

      end
    end
  end
end
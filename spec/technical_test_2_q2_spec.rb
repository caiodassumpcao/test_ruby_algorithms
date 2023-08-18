require 'rspec-rails'
require 'active_record'
require 'technical_test_2_q2'

RSpec.describe User, type: :model do
  it 'has a valid name' do
    user = User.new(name: 'Caio')
    expect(user.valid?).to be(true)
  end

  it 'can have multiple event_users' do
    user = user.new(name: 'Jack')
    event_user_1 = EventUser.new(user: user)
    event_user_2 = EventUser.new(user: user)

  end

  describe 'Funcionarios' do
    before(:all) do
      ActiveRecord::Base.establish_connection(
        adapter: 'mysql2',
        database: ':ruby_teste_2_q21_db'
      )

      ActiveRecord::Schema.define do
        create_table :event_users, unless_exist: true do |t|
          t.string :event_users
        end unless table_exists?(:event_users)

        create_table :
      end
    end
    context '' do

    end

  end

end

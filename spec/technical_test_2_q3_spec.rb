require 'rspec-rails'
require 'active_record'
require 'technical_test_2_q3'

RSpec.describe CreateUsers, type: :model do
  context 'Scope for users' do
    it 'returnuser whith age >= 18 and job as a programador or desenvolvedor' do
      User.create(name: "João", age: 20, job: "programador")
      User.create(name: "Maria", age: 30, job: "analista")
      User.create(name: "Caio", age: 24, job: "desenvolvedor")
      User.create(name: "Malu", age: 16, job: "programador")

      result = User.programadores_desenvolvedores_maior_de_18
      expect(result.pluck(:name)).to contain_exactly("João", "Caio")
    end
  end
  context 'Validatoins' do
    it 'requires name to be present' do
      user_1 = User.new(age: 3, job: "programador")
      expect(user_1.valid?).to be(false)
      expect(user_1.errors[:name]).to include("can't be blank")
    end

  end
end
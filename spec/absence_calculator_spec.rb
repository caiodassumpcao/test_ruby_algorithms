require 'absence_calculator'
require 'rspec-rails'

RSpec.describe 'AbsenceCalculator' do
  context 'calculate_total_faltas' do
    it 'calculates total faltas corrrectly' do
      carga_horaria = 60
      hora_aula = 280

      total_faltas =AbsenceCalculator.calcule_total_faltas(carga_horaria, hora_aula)
      expect(total_faltas).to eq(5)
    end
    it 'calculates total faltas correctly for different ' do
      carga_horaria = 5
      hora_aula = 10

      total_faltas = AbsenceCalculator.calcule_total_faltas(carga_horaria, hora_aula)
      expect(total_faltas).to eq(0)
    end

    it 'calculates total faltas correctly when total_aulas is not an integer' do
      carga_horaria = 75
      hora_aula = 30

      total_faltas = AbsenceCalculator.calcule_total_faltas(carga_horaria, hora_aula)
      expect(total_faltas).to eq(6)
    end
  end
end
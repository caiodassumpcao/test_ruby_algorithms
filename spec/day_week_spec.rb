require 'day_week'

describe 'day_of_week' do
  it 'retorna o dia da semana corretamente' do
    expect(day_of_week(2023, 3, 12)).to eq(0)
  end

  it 'retorna o dia da semana corretamente' do
    expect(day_of_week(2022, 9, 1)).to eq(4)
  end

  it 'retorna o dia da semana corretamente' do
    expect(day_of_week(2021, 12, 25)).to eq(6)
  end
end
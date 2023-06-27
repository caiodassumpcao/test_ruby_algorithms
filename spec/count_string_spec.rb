require 'count_string'

describe 'count_strg' do
  it 'conta as letras maiúsculas, minúsculas, caracteres especiais e valores numéricos' do
    string = "#Caio1"
    expect(count_strg(string)).to eq({ upper: 1, lower: 3, number: 1, special: 1 })
  end

  it 'conta as letras maiúsculas, minúsculas, caracteres especiais, valores numéricos e objetos' do
    string = "Testing123!@##"
    result = count_strg(string)
    expect(result).to eq({ upper: 1, lower: 6, number: 3, special: 4 })
  end

end
require 'find_larg_array'

describe 'find_larg_arr' do
  it 'retorna os três maiores elementos do array' do
    array = [10, 4, 3, 50, 23, 90]
    expect(find_larg_arr(array)).to eq([90, 50, 23])
  end

  it 'retorna os três maiores elementos do array, mesmo com elementos repetidos' do
    array = [10, 4, 3, 50, 23, 90, 50, 23, 90]
    expect(find_larg_arr(array)).to eq([90, 90, 50])
  end

  it 'retorna os três maiores elementos do array quando o array tem menos de três elementos' do
    array = [10, 4]
    expect(find_larg_arr(array)).to eq([10, 4])
  end

  it 'retorna um array vazio quando o array está vazio' do
    array = []
    expect(find_larg_arr(array)).to eq([])
  end
end
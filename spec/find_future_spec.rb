require 'find_future'

describe 'find_date_position' do
  it 'retorna a posição correta para uma data existente' do
    dates = ['22/4/1233', '1/3/633', '23/5/56645', '4/12/233']
    input_date = '23/5/56645'
    expect(find_date_position(dates, input_date)).to eq("A data 23/05/56645 existe na biblioteca, na posição 2.")
  end

  it 'retorna a mensagem correta para uma data inexistente' do
    dates = ['22/4/1233', '1/3/633', '23/5/56645', '4/12/233']
    input_date = '15/6/2023'
    expect(find_date_position(dates, input_date)).to eq("A data 15/06/2023 não existe no biblioteca.")
  end
end
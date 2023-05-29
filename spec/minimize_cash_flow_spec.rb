require_relative '../lib/minimize_cash_flow'

describe 'calculate_cash_flw' do
  it 'calculates the cash flow and prints the correct payment transactions' do
    graph = [
      [0, 1000, 2000],
      [0, 0, 5000],
      [0, 0, 0]
    ]

    expected_output = "Person 1 pays 4000 to Person 2\nPerson 0 pays 3000 to Person 2\n"

    expect { calculate_cash_flw(graph) }.to output(expected_output).to_stdout
  end
end

describe 'get_min' do
  it 'returns the index of the minimum value in the array' do
    array = [10, 5, 8, 2, 7]
    expect(get_min(array)).to eq(3)
  end
end

describe 'get_max' do
  it 'returns the index of the maximum value in the array' do
    array = [10, 5, 8, 2, 7]
    expect(get_max(array)).to eq(0)
  end
end

describe 'min_of_2' do
  it 'returns the minimum value between two numbers' do
    x = 5
    y = 8
    expect(min_of_2(x, y)).to eq(5)
  end
end
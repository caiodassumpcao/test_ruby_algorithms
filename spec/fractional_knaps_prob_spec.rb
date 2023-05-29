# frozen_string_literal: true

require_relative '../lib/fractional_knaps_prob'

var = describe '#razao' do
  it 'calculates the maximum profit for a given set of items' do
    array = [
      Item.new(20, 100),
      Item.new(10, 60),
      Item.new(30, 120)
    ]
    max_weight = 50

    expect(razao(array, max_weight)).to eq(240)
  end

  it 'returns the profit for a single item when it is the only available option' do
    array = [Item.new(20, 100)]
    max_weight = 10

    expect(razao(array, max_weight)).to eq(50)
  end

  it 'returns 0 when the list of items is empty' do
    array = []
    max_weight = 50

    expect(razao(array, max_weight)).to eq(0)
  end

  it 'calculates the maximum profit regardless of the order of items' do
    array = [
      Item.new(30, 120),
      Item.new(10, 60),
      Item.new(20, 100)
    ]
    max_weight = 50

    expect(razao(array, max_weight)).to eq(240)
  end

end

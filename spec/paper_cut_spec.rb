# frozen_string_literal: true

require_relative '../lib/paper_cut'

def method_name
  it 'returns the minimum number of squares that can be cut from a given paper' do
    expect(cut(13, 29)).to eq(9)
  end

  it 'returns 1 when the paper dimensions are the same' do
    expect(cut(5, 5)).to eq(1)
  end

  it('returns 2 when the paper dimensions are consecutive numbers') { expect(cut(7, 8)).to eq(2) }

  it 'returns 3 when one dimension is a multiple of the other' do
    expect(cut(12, 4)).to eq(3)
  end
end

RSpec.describe 'PaperCut' do
  describe '#cut', &method(:method_name)
end

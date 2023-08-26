require 'algorit_kadane'
require 'rspec-rails'

RSpec.describe 'Kadane Algorithm' do
  context '#kadane' do
    it 'returns the maximum subarray sum' do
      array = [1, 2, 3, -2, 5]
      result = kadane(array)
      expect(result).to eq(9)
    end

    it 'returns the maximum subarray sum for an array with negative numbers' do
      array = [-2, -3, -4, -1, -2, -1, -5, -3]
      result = kadane(array)
      expect(result).to eq(-1)
    end

    it 'returns the maximum subarray sum for an array with all positive numbers' do
      array = []
    end
  end
end
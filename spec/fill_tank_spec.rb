require 'rgl/flow'
require 'fill_tank'
require 'rspec-rails'

RSpec.describe 'Max Flow Fill Tank' do
  context 'max_flow_fill_tank' do
    it 'calculates max flow when all adges have equal capacities' do
      n = 4
      s = 1
      edges = [[1, 2], [1, 3], [2, 4]]
      cap = [1, 1, 1, 1]
      result = max_flow_fill_tank(n, s, edges, cap)
      expect(result).to eq(3)
    end
    it 'calculates max flow when some edges have higher capacities' do
      n = 4
      s = 1
      edges = [[1, 2], [1, 3], [2, 4]]
      cap = [2, 1, 1, 1]
      result = max_flow_fil_tank(n, s, edges, cap)
      expect(result).to eq(4)
    end
    it 'calculates max flow when some edges have lower capacities' do
      n = 4
      s = 1
      edges = [[1, 2], [1, 3], [2, 4]]
      cap = [1, 3, 2, 2]
      result = max_flow_fill_tank(s, n, edges, cap)
      expect(result).to eq(4)
    end
    it 'calculates max flow whit different starting vertex' do
      n = 4
      s = 2
      edges = [[1, 2], [1, 3], [2, 4]]
      cap = [1, 1, 1, 1]
      result = max_flow_fill_tank(s, n, edges, cap)
      expect(result).to eq(0)
    end
    it 'calculates max flow whit different graph structure' do
      n = 5
      s = 1
      edges = [[1, 2], [1, 3], [2, 4], [2, 5], [4, 5]]
      cap = [1, 1, 2, 1, 2]
      result = max_flow_fill_tank(s, n, edges, cap)
      expect(result).to eq(4)
    end
end
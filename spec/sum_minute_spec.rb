require 'sum_minute'

RSpec.describe 'sum_minute' do
  context 'when given a time and minutes' do
    it 'returns the time after adding the minutes' do
      t = "12:43"
      k = 21
      expect(findtime(t, k)).to eq("13:04")
    end
  end

  context 'when given a time at the end of the day' do
    it 'returns the time after adding the minutes within the same day' do
      t = "23:45"
      k = 30
      expect(findtime(t, k)).to eq("00:15")
    end
  end

  context 'when given a time at the beginning of the day' do
    it 'returns the time after adding the minutes within the same day' do
      t = "00:05"
      k = 10
      expect(findtime(t, k)).to eq("00:15")
    end
  end
end
require 'common_char'

describe 'CommonChar' do
  it 'returns common characters between two strings' do
    string1 = "apple"
    string2 = "orange"

    expect(common_char(string1, string2)).to eq(["a", "e"])
  end
end
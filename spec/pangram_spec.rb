require 'pangram'

describe 'pangram' do
  it 'verifica se a string é um pangrama' do
    string = "welcome to geeksforgeeks"
    expected_output = "Essa string não é pangram: welcome to geeksforgeeks\nfaltaram 14 letras\nSegue letras que faltaram: [\"a\", \"b\", \"d\", \"h\", \"i\", \"j\", \"n\", \"p\", \"q\", \"u\", \"v\", \"x\", \"y\", \"z\"]\n"
    expect { pangram(string) }.to output(expected_output).to_stdout
  end

  it 'verifica se a string é um pangrama' do
    string = "The quick brown fox jumps"
    expected_output = "Essa string não é pangram: The quick brown fox jumps\nfaltaram 7 letras\nSegue letras que faltaram: [\"a\", \"d\", \"g\", \"l\", \"v\", \"y\", \"z\"]\n"
    expect { pangram(string) }.to output(expected_output).to_stdout
  end

  it 'verifica se a string é um pangrama' do
    string = "The quick brown fox jumps over the lazy dog"
    expected_output = "Essa string é pangram: The quick brown fox jumps over the lazy dog\nfaltaram 0 letras\nSegue letras que faltaram: []\n"
    expect { pangram(string) }.to output(expected_output).to_stdout
  end
end
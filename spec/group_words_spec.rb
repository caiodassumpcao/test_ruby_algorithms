require 'group_words'

describe 'word_same_char' do

  it 'agrupa corretamente as palavras quando todas têm o mesmo conjunto de caracteres' do
    words = ["may", "yam", "amy"]

    expected_output = <<-OUTPUT
 may, yam, amy,
    OUTPUT

    expect { word_same_char(words) }.to output(expected_output).to_stdout
  end

  it 'agrupa corretamente as palavras quando todas têm conjuntos de caracteres diferentes' do
    words = ["dog", "cat", "bat"]

    expected_output = <<-OUTPUT
 dog,
 cat,
 bat,
    OUTPUT

    expect { word_same_char(words) }.to output(expected_output).to_stdout
  end

  it 'agrupa corretamente as palavras quando o array está vazio' do
    words = []

    expect { word_same_char(words) }.to output("").to_stdout
  end
end
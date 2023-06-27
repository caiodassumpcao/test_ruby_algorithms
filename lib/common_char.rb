# frozen_string_literal: true

# Common characters in n strings - Caracteres comuns em n strings

def common_char(string1, string2)
  repetido = []
  contagem = string2.chars
  string1.chars.each do |char|
    if contagem.include?(char)
      repetido << char
    end
  end

  repetido
end

string1 = 'apple'
string2 = 'orange'

common_char(string1, string2)
#Contar letras maiúsculas, minúsculas, caracteres especiais e valores numéricos

def count_strg(string)
  upper = 0
  lower = 0
  number = 0
  special = 0

  string.each_char do |char|
    if char.match?(/[A-Z]/)
      upper += 1
    elsif char.match?(/[a-z]/)
      lower += 1
    elsif char.match?(/\d/)
      number += 1
    else
      special += 1
    end
  end

  {
    upper: upper,
    lower: lower,
    number: number,
    special: special
  }
end

if __FILE__ == $0
  string = "#Caio1"
  puts count_strg(string)

end
def is_palindrome?(word)
  reversed_word = word.reverse

  if word == reversed_word
    puts "#{word} é palindromo"
    true
  else
    puts "#{word} não é palindromo"
    false
  end
end

print "Digite uma palavra: "
palavra = gets.chomp.downcase
is_palindrome?(palavra)
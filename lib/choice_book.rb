def choose_book(livro)
    case livro
    when "Mais esperto que o diabo"
      puts "Livro encontrado, no armário da cabeceira"
    when "O poder da ação"
      puts "Livro não encontrado"
    else
      puts "Não temos esse livro"
    end
  end

  choose_book(ARGV[0]) if __FILE__ == $0

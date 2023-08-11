class Author
  def initialize(name, birth_year)
    @name = name
    @birth_year = birth_year
  end
  def get_name
    @name
  end
  def get_birth_year
    @birth_year
  end
end

author = Author.new("Autor teste", 1999)
puts "Nome do autor: #{author.get_name}"
puts "Ano de nascimento: #{author.get_birth_year}"

class Books
  def initialize(title, author, publication_year)
    @title = title
    @author = author
    @publication_year = publication_year
  end
  def get_title
    @title
  end
  def get_author
    @author
  end
  def get_publication_year
    @publication_year
  end
end
books = Books.new("O Senhor dos Anéis", "J.R.R. Tolkien", 1954)
puts "Título do livro: #{books.get_title}"
puts "Autor do livro: #{books.get_author}"
puts "Amp de publicaçao: #{books.get_publication_year}"
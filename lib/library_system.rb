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

class Render
  def initialize(name, email)
    @name = name
    @email = email
  end
  def get_name
    @name
  end
  def get_email
    @email
  end
end
render = Render.new("Caio", "email@teste.com")
puts "Leitor: #{render.get_name}"
puts "Email: #{render.get_email}"

author = Author.new("J.K. Rowling", 1965)
book = Book.new("Harry Potter and the Sorcerer's Stone", author, 1997)
reader = Reader.new("John Doe", "john@example.com")

# Crie uma instância da biblioteca
library = Library.new

# Adicione livros e leitores à biblioteca
library.add_book(book)
library.add_reader(reader)

# Registre empréstimos na biblioteca (você precisaria criar a classe Loan)
# loan = Loan.new(book, reader, Date.today)  # Exemplo de criação da classe Loan

# Liste os livros, leitores e empréstimos usando os métodos da classe Library
puts "Livros disponíveis:"
library.get_books.each do |book|
  puts "- #{book.get_title}"
end

puts "\nLeitores cadastrados:"
library.get_readers.each do |reader|
  puts "- #{reader.get_name}"
end

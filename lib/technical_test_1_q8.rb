# Qual o significado do self nas classes ruby?

#Resumo: Em resumo, o self em Ruby é uma referência especial que se refere ao objeto atual da classe, seja para acessar métodos e variáveis de instância, definir métodos de classe ou acessar variáveis de classe. Ele desempenha um papel importante na orientação a objetos e no encapsulamento dos comportamentos e dados dentro das classes.

# Resposta:
# Em Ruby, a palavra-chave self é uma referência ao objeto atual em contexto.  Ela é usada parase referir ao objeto em que um método está sendo chamado.
#    Referência a um método de instância: Dentro de um método de instância (método sem o prefixo self.), o self se refere ao objeto atual, permitindo acessar outros métodos e variáveis de instância desse objeto. Por exemplo:
class Exemplo
  def metodo1
    puts "Este é o método 1"
  end

  def metodo2
    self.metodo1 # Chamando o método1 usando self
  end
end

exemplo = Exemplo.new
exemplo.metodo2

# Nesse caso, self.metodo1 é usado para chamar o método metodo1 do objeto atual da classe Exemplo.

#Definição de métodos de classe: Dentro de um método de classe (método definido com o prefixo self.), o self se refere à própria classe, permitindo definir métodos de classe. Por exemplo:
class Exemplo
  def self.metodo_de_classe
    puts "Este é um método de classe"
  end
end

Exemplo.metodo_de_classe

#Aqui, self.metodo_de_classe é usado para definir um método de classe na classe Exemplo.

# Acesso a variáveis de classe: O self também pode ser usado para acessar variáveis de classe. Por exemplo:

class Exemplo
  @@variavel_de_classe = "Variável de classe"

  def self.mostrar_variavel_de_classe
    puts @@variavel_de_classe
  end
end

Exemplo.mostrar_variavel_de_classe

#Nesse caso, @@variavel_de_classe é uma variável de classe e é acessada usando self.



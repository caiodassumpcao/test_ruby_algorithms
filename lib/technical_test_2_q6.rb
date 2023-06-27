# Usando Ruby on Rails, cite pelo menos uma forma de criar uma rota para um método chamado find_user dentro de um controller com o nome UsersController.

# Em Ruby on Rails, você pode criar uma rota para um método chamado find_user dentro do controller UsersController de duas maneiras diferentes:
# 1°. Usando o método get no arquivo config/routes.rb:
get 'users/find_user', to: 'users#find_user'
#  Nesse caso, a rota será definida como users/find_user e mapeará para o método find_user dentro do controller UsersController.

# 2°. Usando a macro match no arquivo config/routes.rb:
match 'users/find_user', to: 'users#find_user', via: [:get]
# Isso cria uma rota para o método find_user dentro do controller UsersController e define o método HTTP como GET.

# Ambas as opções criarão uma rota que mapeia para o método find_user dentro do controller UsersController. Você pode escolher a opção que melhor se adapta às suas necessidades. Lembre-se de reiniciar o servidor após adicionar ou alterar as rotas para que as alterações tenham efeito.
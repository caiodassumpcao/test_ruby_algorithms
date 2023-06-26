# Considerando a estrutura padrão de arquivos de um projeto feito com Ruby on Rails, em  quais pastas devem se encontrar os models, os controllers e as views de um projeto? De  que modo é possível saber qual controller é responsável por gerenciar uma determinada  view?

# RESPOSTA:

# Em um projeto Ruby on Rails com a estrutura padrão de arquivos, os models, controllers e views devem estar localizados nas seguintes pastas:
# 1°.Models: Os arquivos de model são geralmente colocados na pasta app/models. Cada model é definido em seu próprio arquivo dentro dessa pasta
# 2°.Controllers: Os arquivos de controller são normalmente colocados na pasta app/controllers. Cada controller é definido em seu próprio arquivo dentro dessa pasta
# 3°.Views: As views são geralmente colocadas na pasta app/views. Dentro dessa pasta, há uma subpasta correspondente ao nome do controller responsável por gerenciar as views. Por exemplo, se o controller se chama UsersController, as views relacionadas estarão na pasta app/views/users

# Para saber qual controller é responsável por gerenciar uma determinada view, você pode observar a estrutura de pastas mencionada acima. As views estão organizadas em subpastas correspondentes aos controllers. Por exemplo, se você está vendo um arquivo show.html.erb na pasta app/views/users, isso significa que o UsersController é responsável por gerenciar essa view
# Além disso, você pode verificar o conteúdo do arquivo de rotas config/routes.rb. As rotas definidas nesse arquivo geralmente indicam qual controller e método são responsáveis por uma determinada ação. Por exemplo, se você tem uma rota definida como get 'users/:id', to: 'users#show', isso significa que o UsersController é responsável pela ação show e, portanto, pela view correspondente a essa ação.
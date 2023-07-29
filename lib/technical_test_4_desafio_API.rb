# De etapas de como pode ser resolvido essa questão, mostrando o codigo e explicando cada etapa:
# Requisitos:
# ● O desafio deve ser desenvolvido utilizando Ruby e tendo o Rails como framework;
# ● Seguindo o padrão API RESTful;
# ● Seguir o Rubocop style-guide;
# ● A leitura do arquivo .csv deve ser através de um endpoint diferente da listagem de títulos;
# ● Ordenar pelo ano de lançamento;
# ● Filtrar os registros por ano de lançamento, gênero, país*;
# ● Garantir que não haja duplicidade de registros;
# ● O projeto deve ser disponibilizado em um repositório aberto no GitHub. Envie a URL assim que
# possível;
# ● A response do endpoint deve obedecer o padrão abaixo:

#[
#  {
#    "id":"431107b0-1654-22ec-9621-0242ac130002",
#    "title":"13 Reasons Why",
#    "genre":"Tv Show",
#    "year":"2020",
#    "country":"United States",
#    "published_at":"2020-05-07",
#   "description":"A classmate recives a serie of tapes that the mystery of her tragic choice."
#  }
#]

# Dicas:
# vamos testar:
# ● Testes são bem-vindos;
# ● Tipo de banco de dados em aberto, pode escolher tanto relacional quanto não relacional;
# ● O filtro pode ser aplicado por 1 ou mais itens, mas devem atender aos requisitos;
# ● O arquivo .csv, entitulado netflix_titles.csv, poderá ser encontrado no anexo do email com o

# Etapas:
# OK 1- Configurar ambiente
# OK 2- Configurar banco de dados
# OK  2.1- Configure o arquivo config/database.yml com as informações de conexão do banco de dados escolhido
# OK 3- Modelo de dados
# OK  3.1- Crie um modelo para representar os títulos do Netflix -> você pode criar um arquivo de migração para criar uma tabela "titles" com os campos relevantes, como "id", "title", "genre", "year", "country", "published_at" e "description". Use o comando rails generate migration CreateTitles
# OK  3.2- Execute o comando "rails db:migrate"
# OK 3.3- Defina as validações necessárias para o modelo Title, como a garantia de que não haja duplicidade de registros
# OK  3.3.1-> Necessário criar e editar arquivo app/models/title.rb

# 4- Importação do CSV
# OK  4.1- Você pode adicionar uma rota no arquivo config/routes.rb, como post '/import', to: 'titles#import_csv'
# OK  4.2- Crie um controlador "TitlesController" com uma ação "import_csv" correspondente
#   4.3- Na ação "import_csv", faça a leitura do arquivo CSV e salve os dados no banco de dados
#     4.3.1- Formularo HTML no front-end quue permita ao usuario selecionar CSV para enviar
#     4.3.2- Formulario deve enviar uma solicitaçao POST para o endpoint "/imoport" no back-end
# 6- Formulario Front-end
#   6.1-
# 5- Listagem de titulos
#   5.1- Crie um endpoint para listar os títulos, seguindo o padrão RESTful. Por exemplo, você pode adicionar uma rota no arquivo config/routes.rb, como get '/titles', to: 'titles#index'.
#   5.2- Crie uma ação "index" no controlador "TitlesController" correspondente
#   5.3- Na ação "index", recupere os títulos dos bancos de dados, aplicando as filtragens necessárias (por ano de lançamento, genero, pais, etc)
#   5.4- Retorne a lista de titulos como resposta, em forma de JSON
# 6- Testes
#   6.1- Escreva testes automatizados para garantir o funcionamento correto da API
#   6.2- Utilizar RSpec ou MiniTest
#   6.3- Certificar de testar casos de sucesso e de fakha para diferentes funcionalidades da API

class desafio

end

def teste()
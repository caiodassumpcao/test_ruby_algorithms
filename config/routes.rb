Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Rota para listar os títulos
  resources :titles, only: [:index]

  # Rota para importar os dados do arquivo CSV
  post '/import', to: 'titles#import_csv'

  # Rota raiz (root path)
  root "titles#index"
end

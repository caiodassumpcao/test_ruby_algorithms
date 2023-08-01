# spec/rails_helper.rb

# Define o ambiente de execução como "test" caso não tenha sido definido
ENV['RAILS_ENV'] ||= 'test'

# Carrega o ambiente da aplicação
require File.expand_path('../config/environment', __dir__)

# Requer a biblioteca do RSpec para integração com Rails
require 'rspec/rails'

RSpec.configure do |config|
  # Define o diretório para as fixtures de teste (opcional)
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  # Utiliza transações para garantir que cada teste seja executado em uma transação de banco de dados
  config.use_transactional_fixtures = true

  # Inferir o tipo do teste pelo arquivo onde está definido (spec/requests, spec/controllers, etc.)
  config.infer_spec_type_from_file_location!
end


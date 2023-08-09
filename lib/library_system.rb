require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'mysql2',
  host: 'localhost',
  username: 'root',
  password: 'caitole123',
  database: 'library_system_db'
)

class Livros < ActiveRecord::Base

end
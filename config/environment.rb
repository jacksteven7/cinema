# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!
DB = Sequel.connect(adapter: 'postgres', host: 'localhost', database: 'cinema_development')
Sequel.extension :migration, :core_extensions
DB.extension :date_arithmetic
# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!
DB = Sequel.connect "sqlite://db.sqlite3"
Sequel.extension :migration, :core_extensions
DB.extension :date_arithmetic
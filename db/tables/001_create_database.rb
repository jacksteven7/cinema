require 'sequel'
DB = Sequel.connect "sqlite://db.sqlite3"
DB.create_table :movies do
  primary_key :movie_id
  String :title
  String :description
  String :url
  String :days
end

DB.create_table :reservations do
  primary_key :reservation_id
  foreign_key :movie_id
  Date :rdate #Reservation date
  Integer :persons
end
